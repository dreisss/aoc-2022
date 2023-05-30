#!/bin/env python

from os.path import dirname

input = open(dirname(__file__) + '/../../input/in_day01.txt').read()

def solution(input: str) -> int:
    return max(
        map(lambda n: sum(map(int, n.split())),
            input.split('\n\n'))
    )

print(solution(input))
