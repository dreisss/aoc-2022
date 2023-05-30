#!/bin/env ruby
# frozen_string_literal: true

require 'set'

input = File.read("#{__dir__}/../../input/in_day03.txt")

# @param {String} input
# @return {Integer}
def solution(input)
  input.split.map! do |rucksack|
    first = rucksack[...rucksack.length / 2].chars.to_set
    second = rucksack[rucksack.length / 2..].chars.to_set
    item = first.intersection(second).first
    item.ord - (item > 'Z' ? 'a'.ord - 1 : 38)
  end.sum
end

puts solution(input)
