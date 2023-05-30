#!/bin/env ruby
# frozen_string_literal: true

SCORES = %w[X Y Z].freeze
WINS = ['A Y', 'C X', 'B Z'].freeze
DRAWS = ['A X', 'B Y', 'C Z'].freeze

input = File.read("#{__dir__}/../../input/in_day02.txt")

# @param {String} input
# @return {Integer}
def solution(input)
  input.split("\n").map! do |round|
    score = 1 + SCORES.index(round[2])

    if WINS.include? round
      score += 6
    elsif DRAWS.include? round
      score += 3
    end

    score
  end.sum
end

puts solution(input)
