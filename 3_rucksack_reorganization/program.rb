# frozen_string_literal: true

doc = File.open('rucksack.txt').read
data = doc.split("\n")

score = 0
score2 = 0

a = ('a'..'z').to_a
b = (1..26).to_a
c = ('A'..'Z').to_a
d = (27..52).to_a

a = a.zip(b)
c = c.zip(d)

data.each do |line|
  result = ''
  first_half = line[0...line.length / 2].chars
  second_half = line[line.length / 2...line.length].chars

  first_half.each do |char|
    result = char if second_half.include?(char)
  end

  if result.match?(/[a-z]/)
    a.each do |item|
      score += item[1].to_i if item.include?(result)
    end

  else
    c.each do |item|
      score += item[1].to_i if item.include?(result)
    end
  end
end

p score
n = 0

100.times do
  first = data[n].chars
  second = data[n + 1].chars
  third = data[n + 2].chars

  result = ""
  first.each do |char|
    result = char if second.include?(char) && third.include?(char)
  end
  n += 3

  if result.match?(/[a-z]/)
    a.each do |item|
      score2 += item[1].to_i if item.include?(result)
    end

  else
    c.each do |item|
      score2 += item[1].to_i if item.include?(result)
    end
  end
end

p score2
