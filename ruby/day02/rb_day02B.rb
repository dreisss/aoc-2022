#!/bin/env ruby
# frozen_string_literal: true

SCORES = %w[A B C].freeze
CASES = %w[X Y Z].freeze
WINS = ['A B', 'C A', 'B C'].freeze
DRAWS = ['A A', 'B B', 'C C'].freeze
TO_LOSE = %w[C A B].freeze
TO_WIN = %w[B C A].freeze

input = File.read("#{__dir__}/../../input/in_day02.txt")

# @param {String} input
# @return {Integer}
def solution(input)
  input.split("\n").map! do |round|
    cases = [TO_LOSE[SCORES.index round[0]], round[0], TO_WIN[SCORES.index round[0]]]
    round[2] = cases[CASES.index round[2]]
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
