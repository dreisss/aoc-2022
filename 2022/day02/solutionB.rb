#!/bin/env ruby

SCORES = ['A', 'B', 'C']
WINS = ['A B', 'C A', 'B C']
DRAWS = ['A A', 'B B', 'C C']
TO_LOSE = ['C', 'A', 'B']
TO_WIN = ['B', 'C', 'A']

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
    if round[2] == 'X'
      round[2] = TO_LOSE[SCORES.index round[0]]
    elsif round[2] == 'Y'
      round[2] = round[0]
    elsif round[2] == 'Z'
      round[2] = TO_WIN[SCORES.index round[0]]
    end
    
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
