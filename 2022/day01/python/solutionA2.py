#!/bin/env python

input = open('../input.txt').read()

def format_input(input: str) -> 'list[list[int]]':
    return [
        [
            int(n) for n in num.split('\n')
        ] for num in input.split('\n\n')
    ]

def solution(elves: 'list[list[int]]') -> int:
    return max([sum(elf) for elf in elves])

print(solution(format_input(input)))
