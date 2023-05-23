#!/bin/env ruby
# frozen_string_literal: true

require 'set'

input = File.read('../input.txt')

# @param {String} input
# @return {Integer[][][]}
def format_input(input)
  input.split.map do |sections|
    sections.split(',').map do |pair|
      pair.split('-').map(&:to_i)
    end
  end
end

# @param {Integer[][][]} sections
# @return {Integer}
def solution(sections)
  sections.filter do |section|
    first = (section.first[0]..section.first[1])
    second = (section.last[0]..section.last[1])
    !first.to_set.&(second.to_set).empty?
  end.length
end

print solution(format_input(input))