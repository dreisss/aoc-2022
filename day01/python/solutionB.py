#!/bin/env python

input = open('../input.txt').read()

def format(input: str) -> 'map[map[int]]':
    return map(lambda n: map(int, n.split('\n')), input.split('\n\n'))

def solution(elves: 'map[map[int]]') -> int:
    return sum(sorted(map(sum, elves))[-3:])

print(solution(format(input)))
