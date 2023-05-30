#!/bin/env ruby
# frozen_string_literal: true

input = File.read("#{__dir__}/../../input/in_day01.txt")

# @param {String} input
# @return {Integer}
def solution(input)
  input.split("\n\n").map! do |numbers|
    numbers.split.map!(&:to_i).sum
  end.sort!.last(3).sum
end

puts solution(input)
