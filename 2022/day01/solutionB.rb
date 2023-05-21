#!/bin/env ruby

input = File.read('./input.txt')

# @param {String} input
# @return {Integer[][]}
def format_input(input)
  input.split("\n\n").map do |numbers|
    numbers.split("\n").map(&:to_i)
  end
end

# @param {Integer[][]} formatted_input
# @return {Integer}
def solution(formatted_input)
  formatted_input.map(&:sum).sort.last(3).sum
end

print solution(format_input(input))
