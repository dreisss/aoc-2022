#!/bin/env python

from os.path import dirname

input = open(dirname(__file__) + '/../../input/in_day04.txt').read()

def solution(input: str) -> int:
    def _filter(sections) -> bool:
        pairs = list(map(lambda p: p.split('-'), sections.split(',')))
        first = set(range(int(pairs[0][0]), int(pairs[0][1]) + 1))
        second = set(range(int(pairs[1][0]), int(pairs[1][1]) + 1))
        return first.issubset(second) or second.issubset(first)
        
    return len(list(filter(_filter, input.split())))

print(solution(input))
