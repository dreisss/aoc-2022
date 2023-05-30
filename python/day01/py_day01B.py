#!/bin/env python

from os.path import dirname

input = open(dirname(__file__) + '/../../input/in_day01.txt').read()

def solution(input: str) -> int:
    return sum(
        sorted(
            map(lambda n: sum(map(int, n.split())),
                input.split('\n\n'))
        )[-3:]
    )

print(solution(input))
