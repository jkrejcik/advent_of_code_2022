# frozen_string_literal: true

require 'csv'

file_path = './numbers.csv'
numbers = []

# loading a file from csv
CSV.foreach(file_path) do |row|
  numbers << row[0].to_i
end

array = []
sum = 0

numbers.each do |item|
  if item.positive?
    sum += item
  else
    array << sum
    sum = 0
  end
end

# Result of sum top ELF capacity
p array.max

# Result of sum of top 3 elf capatities
part_two = array.sort.reverse
p part_two.take(3).sum
