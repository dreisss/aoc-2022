#!/bin/env python

input = open('../input.txt').read()

def format(input: str) -> list[str]:
    return input.split()

def solution(rucksacks: list[str]) -> int:
    def _map(rucksack):
        first = set(rucksack[:len(rucksack) // 2])
        second = set(rucksack[len(rucksack) // 2:])
        item = first.intersection(second).pop()
        return ord(item) - (ord('a') - 1 if item > 'Z' else 38)
    
    return sum(map(_map, rucksacks))

print(solution(format(input)))
