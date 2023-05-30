#!/bin/env ruby
# frozen_string_literal: true

require 'set'

input = File.read("#{__dir__}/../../input/in_day03.txt")

# @param {String} input
# @return {Integer}
def solution(input)
  rucksacks = input.split
  priorities = []
  (0...rucksacks.length).step(3) do |i|
    first = rucksacks[i].chars.to_set
    second = rucksacks[i + 1].chars.to_set
    third = rucksacks[i + 2].chars.to_set
    priority = first.&(second).&(third).first
    priorities << priority.ord - (priority > 'Z' ? 'a'.ord - 1 : 38)
  end
  priorities.sum
end

puts solution(input)
