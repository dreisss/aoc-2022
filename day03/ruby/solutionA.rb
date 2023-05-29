#!/bin/env ruby
# frozen_string_literal: true

require 'set'

input = File.read('../input.txt')

# @param {String} input
# @return {Array(String)}
def format(input)
  input.split
end

# @param {Array(String)} rucksacks
# @return {Integer}
def solution(rucksacks)
  rucksacks.map! do |rucksack|
    first = rucksack[...rucksack.length / 2].chars.to_set
    second = rucksack[rucksack.length / 2..].chars.to_set
    item = first.intersection(second).first
    item.ord - (item > 'Z' ? 'a'.ord - 1 : 38)
  end.sum
end

print solution(format(input))
