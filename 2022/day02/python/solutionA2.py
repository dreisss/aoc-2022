#!/bin/env python

SCORES = ['X', 'Y', 'Z']
WINS = ['A Y', 'C X', 'B Z']
DRAWS = ['A X', 'B Y', 'C Z']

input = open('../input.txt').read()

def format_input(input: str) -> 'list[str]':
    return input.split('\n')

def solution(rounds: 'list[str]') -> int:
    result = []

    for round in rounds:
        [opponent, _, player] = round
        score = 1 + SCORES.index(player)

        if round in WINS:
            score += 6
        elif round in DRAWS:
            score += 3
        
        result.append(score)
        
    return sum(result)

print(solution(format_input(input)))
