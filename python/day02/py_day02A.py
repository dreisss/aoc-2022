#!/bin/env python

from os.path import dirname

input = open(dirname(__file__) + '/../../input/in_day02.txt').read()

SCORES = ['X', 'Y', 'Z']
WINS = ['A Y', 'C X', 'B Z']
DRAWS = ['A X', 'B Y', 'C Z']


def solution(input: str) -> int:
    def _map(round):
        score = 1 + SCORES.index(round[2])

        if round in WINS:
            score += 6
        elif round in DRAWS:
            score += 3

        return score
        
    return sum(map(_map, input.split('\n')))

print(solution(input))
