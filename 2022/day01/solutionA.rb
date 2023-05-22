#!/bin/env ruby
# frozen_string_literal: true

input = File.read('./input.txt')

# @param {String} input
# @return {Integer[][]}
def format_input(input)
  input.split("\n\n").map do |numbers|
    numbers.split("\n").map(&:to_i)
  end
end

# @param {Integer[][]} elves
# @return {Integer}
def solution(elves)
  elves.map(&:sum).max
end

print solution(format_input(input))
