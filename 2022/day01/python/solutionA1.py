#!/bin/env python

input = open('../input.txt').read()

def format_input(input: str) -> 'list[list[int]]':
    result = []
    
    for numbers in input.split('\n\n'):
        numbers_int = []
        
        for number in numbers.split('\n'):
            numbers_int.append(int(number))
        
        result.append(numbers_int)        
    
    return result

def solution(elves: 'list[list[int]]') -> int:
    sums = []
    
    for elf in elves:
        sums.append(sum(elf))
        
    return max(sums)

print(solution(format_input(input)))
