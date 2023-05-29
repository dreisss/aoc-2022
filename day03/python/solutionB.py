#!/bin/env python

input = open('../input.txt').read()

def format(input: str) -> list[str]:
    return input.split()

def solution(rucksacks:list[str]) -> int:
    priorities = []
    
    for i in range(0, len(rucksacks) - 1, 3):
        first = set(rucksacks[i])
        second = set(rucksacks[i + 1])
        third = set(rucksacks[i + 2])
        item = first.intersection(second).intersection(third).pop()
        priorities.append(ord(item) - (ord('a') - 1 if item > 'Z' else 38))
    
    return sum(priorities)

print(solution(format(input)))
