
array = []

File.read('input.txt').split("\n").each do |row|
  if row.match?(/\W+cd \w*/)
    array << "X"
  end

  if row.match?(/^\d/)
    number = row.match(/(^\d*)/)[1]
    if number.to_i >= 100000
      array << "BIG"
    else
      array << number.to_i
    end
  end
end

new_array = []
sum = 0

new_array << sum

array.each do |element|
  if element.is_a? String
    new_array << sum
    sum = 0
  else
    sum += element
  end
end


p array
p new_array

# result = []
# new_array.each do |element|
#   if element > 0 && element >= 100000
#     result << element
#   end
# end


# p result.sum
