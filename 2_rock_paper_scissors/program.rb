# frozen_string_literal: true

data = File.open("strategy.txt").read

array = data.split("\n")

score = 0
array.each do |row|
  row_new = row.split(" ")
  value1 = row_new[0]
  value2 = row_new[1]

  if value2 == "X" && value1 == "A"
    score += 3
  elsif value2 == "X" && value1 == "B"
    score += 1
  elsif value2 == "X" && value1 == "C"
    score += 2
  elsif value2 == "Y" && value1 == "A"
    score += 4
  elsif value2 == "Y" && value1 == "B"
    score += 5
  elsif value2 == "Y" && value1 == "C"
    score += 6
  elsif value2 == "Z" && value1 == "A"
    score += 8
  elsif value2 == "Z" && value1 == "B"
    score += 9
  elsif value2 == "Z" && value1 == "C"
    score += 7
  end
end

p score

# Helpful stuff
# A,X Rock (1)
# B,Y Paper (2)
# C,Z Scissory (3)
# win 6, draw 3 , lost 0

#Second part of challenge
# X - lose, Y - draw, Z - win


# values for first part of challenge
# if value2 == "X" && value1 == "A"
#   score += 4
# elsif value2 == "X" && value1 == "B"
#   score += 1
# elsif value2 == "X" && value1 == "C"
#   score += 7
# elsif value2 == "Y" && value1 == "A"
#   score += 8
# elsif value2 == "Y" && value1 == "B"
#   score += 5
# elsif value2 == "Y" && value1 == "C"
#   score += 2
# elsif value2 == "Z" && value1 == "A"
#   score += 3
# elsif value2 == "Z" && value1 == "B"
#   score += 9
# elsif value2 == "Z" && value1 == "C"
#   score += 3 + 3
# end
