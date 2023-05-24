#!/bin/env ruby
# frozen_string_literal: true

SCORES = %w[X Y Z].freeze
WINS = ['A Y', 'C X', 'B Z'].freeze
DRAWS = ['A X', 'B Y', 'C Z'].freeze

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
