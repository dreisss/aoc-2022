#!/bin/env ruby
# frozen_string_literal: true

require 'set'

input = File.read('../input.txt')

# @param {String} input
# @return {Array(String)}
def format_input(input)
  input.split
end

# @param {Array(String)} rucksacks
# @return {Integer}
def solution(rucksacks)
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

print solution(format_input(input))
