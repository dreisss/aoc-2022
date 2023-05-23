#!/bin/env python

input = open('../input.txt').read()

def format(input: str) -> list[list[list[int]]]:
    return [
        [
            [
                int(n) for n in p.split('-')
            ] for p in s.split(',')
        ] for s in input.split('\n')
    ]

def solution(sections: list[list[list[int]]]) -> int:
    def _filter(pair) -> bool:
        first = set(range(pair[0][0], pair[0][1] + 1))
        second = set(range(pair[1][0], pair[1][1] + 1))
        return not first.isdisjoint(second)
    
    return len(list(filter(_filter, sections)))

print(solution(format(input)))
