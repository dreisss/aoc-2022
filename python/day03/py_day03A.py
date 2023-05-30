#!/bin/env python

from os.path import dirname

input = open(dirname(__file__) + '/../../input/in_day03.txt').read()

def solution(input: str) -> int:
    def _map(rucksack):
        first = set(rucksack[:len(rucksack) // 2])
        second = set(rucksack[len(rucksack) // 2:])
        item = first.intersection(second).pop()
        return ord(item) - (ord('a') - 1 if item > 'Z' else 38)
    
    return sum(map(_map, input.split()))

print(solution(input))
