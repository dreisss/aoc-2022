#!/bin/env ruby

SCORES = ['X', 'Y', 'Z']
WINS = ['A Y', 'C X', 'B Z']
DRAWS = ['A X', 'B Y', 'C Z']

input = File.read('./input.txt')

# @param {String} input
# @return {Array(String)}
def format_input(input)
  input.split("\n")
end

# @param {Array(String)} formatted_input
# @return {Integer}
def solution(formatted_input)
  formatted_input.map do |round|
    score = 1 + SCORES.index(round[2])

    if WINS.include? round
      score += 6
    elsif DRAWS.include? round
      score += 3
    end
    
    score
  end.sum
end

print solution(format_input(input))
