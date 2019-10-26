#!/usr/bin/env ruby
#
# This script takes a ROM size in bytes as a parameter and then outputs a binary file containing the
# truth table. The truth table comes from Alan Hightower's GAL-based design:
# https://www.retrotronics.org/svn/jride/trunk/tandymod/ZM31.pld

raise 'Please specify a ROM size in kilobits as the only parameter to this script' unless ARGV.length == 1

pgmsize = 256
romsize = (ARGV.first.to_i * 1024) / 8

raise "ROM size must be a multiple of #{pgmsize}" unless (romsize % pgmsize).zero?

puts "Building a #{romsize} byte long ROM ..."

buffer = [''].pack("a#{pgmsize}")

inputs = {
  not_tandy: 1, # A0
  xa16: 2,      # A1
  pg2: 4,       # A2
  xa15: 8,      # A3
  pg1: 16,      # A4
  xa14: 32,     # A5
  pg0: 64,      # A6
  sel: 128      # A7
}

outputs = {
  out14: 1, # D0
  out15: 2, # D1
  out16: 4  # D2
}

(0...pgmsize).each do |address|
  sel = address & inputs[:sel] == inputs[:sel]
  not_tandy = address & inputs[:not_tandy] == inputs[:not_tandy]
  xa14 = address & inputs[:xa14] == inputs[:xa14]
  xa15 = address & inputs[:xa15] == inputs[:xa15]
  xa16 = address & inputs[:xa16] == inputs[:xa16]
  pg0 = address & inputs[:pg0] == inputs[:pg0]
  pg1 = address & inputs[:pg1] == inputs[:pg1]
  pg2 = address & inputs[:pg2] == inputs[:pg2]

  carry0 = xa14

  add14 = pg0 ^ carry0
  carry1 = pg0 && carry0

  add15 = pg1 ^ carry1
  carry2 = pg1 && carry1

  add16 = pg2 ^ carry2

  out14 = (sel && xa14) || (!sel && !not_tandy && add14) || (!sel && not_tandy && pg0)
  out15 = (sel && xa15) || (!sel && !not_tandy && add15) || (!sel && not_tandy && pg1)
  out16 = (sel && xa16) || (!sel && !not_tandy && add16) || (!sel && not_tandy && pg2)

  byte = 0
  byte += outputs[:out14] if out14
  byte += outputs[:out15] if out15
  byte += outputs[:out16] if out16

  printf("%08b - %03b\n", address, byte)

  buffer[address] = byte.chr
end

File.open("rom-#{(romsize / 1024) * 8}kbit.bin", 'wb') do |f|
  # Repeat the data so that we can tie the higher address bits than A7 high or low without
  # affecting the result
  (romsize / pgmsize).times do
    f.write(buffer)
  end
end

puts 'Done writing'
