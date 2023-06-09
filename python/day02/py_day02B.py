#!/bin/env python

from os.path import dirname

input = open(dirname(__file__) + '/../../input/in_day02.txt').read()

SCORES = ['A', 'B', 'C']
CASES = ['X', 'Y', 'Z']
WINS = ['A B', 'C A', 'B C']
DRAWS = ['A A', 'B B', 'C C']
TO_LOSE = ['C', 'A', 'B']
TO_WIN = ['B', 'C', 'A']

def solution(input: str) -> int:
    def _map(round):
        [opponent, _, player] = round
        cases = [TO_LOSE[SCORES.index(opponent)], opponent, TO_WIN[SCORES.index(opponent)]]
        player = cases[CASES.index(player)]
        round = f"{opponent} {player}"

        score = 1 + SCORES.index(player)

        if round in WINS:
            score += 6
        elif round in DRAWS:
            score += 3

        return score
        
    return sum(map(_map, input.split('\n')))
    

print(solution(input))
