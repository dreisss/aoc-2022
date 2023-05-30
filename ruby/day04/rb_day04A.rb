#!/bin/env ruby
# frozen_string_literal: true

require 'set'

input = File.read("#{__dir__}/../../input/in_day04.txt")

# @param {String} input
# @return {Integer}
def solution(input)
  input.split.filter! do |section|
    pairs = section.split(',').map! { |p| p.split('-') }
    first = pairs.first.first.to_i..pairs.first.last.to_i
    second = pairs.last.first.to_i..pairs.last.last.to_i
    first.cover?(second) || second.cover?(first)
  end.length
end

puts solution(input)
