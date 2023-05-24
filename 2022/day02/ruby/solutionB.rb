#!/bin/env ruby
# frozen_string_literal: true

SCORES = %w[A B C].freeze
CASES = %w[X Y Z].freeze
WINS = ['A B', 'C A', 'B C'].freeze
DRAWS = ['A A', 'B B', 'C C'].freeze
TO_LOSE = %w[C A B].freeze
TO_WIN = %w[B C A].freeze

input = File.read('../input.txt')

# @param {String} input
# @return {Array(String)}
def format(input)
  input.split("\n")
end

# @param {Array(String)} rounds
# @return {Integer}
def solution(rounds)
  rounds.map! do |round|
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

print solution(format(input))
