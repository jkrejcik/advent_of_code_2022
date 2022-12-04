# frozen_string_literal: true

score = 0

File.read('id_numbers.txt').split("\n").each do |element|
  row = element.split(",")
  first_half = row[0].split("-")
  secound_half = row[1].split("-")
  first_array = (first_half[0].to_i..first_half[1].to_i).to_a
  secound_array = (secound_half[0].to_i..secound_half[1].to_i).to_a
  test_array = first_array & secound_array

  # first part of challenge

  # if first_array.size < secound_array.size
  #   score += 1 if test_array.size == first_array.size
  # else
  #   score += 1 if test_array.size == secound_array.size
  # end

  # secound part of challenge
  score += 1 if test_array.size > 0
end
p score
