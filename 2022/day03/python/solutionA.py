#!/bin/env python

input = open('../input.txt').read()

def format_input(input: str) -> 'list[str]':
    return input.split()

def solution(rucksacks:'list[str]') -> int:
    priorities = []
    
    for rucksack in rucksacks:
        first = set(rucksack[:len(rucksack) // 2])
        second = set(rucksack[len(rucksack) // 2:])
        item = first.intersection(second).pop()
        priorities.append(ord(item) - (ord('a') - 1 if item > 'Z' else 38))
    
    return sum(priorities)

print(solution(format_input(input)))
