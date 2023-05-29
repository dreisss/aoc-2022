#!/bin/env python

SCORES = ['X', 'Y', 'Z']
WINS = ['A Y', 'C X', 'B Z']
DRAWS = ['A X', 'B Y', 'C Z']

input = open('../input.txt').read()

def format(input: str) -> list[str]:
    return input.split('\n')

def solution(rounds: list[str]) -> int:
    def _map(round):
        score = 1 + SCORES.index(round[2])

        if round in WINS:
            score += 6
        elif round in DRAWS:
            score += 3

        return score
        
    return sum(map(_map, rounds))

print(solution(format(input)))
