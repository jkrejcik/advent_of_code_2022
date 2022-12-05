boxes = {
  "1" => ["H", "C", "R"],
  "2" => ["B", "J", "H", "L", "S", "F"],
  "3" => ["R", "M", "D", "H", "J", "T", "Q"],
  "4" => ["S", "G", "R", "H", "Z", "B", "J"],
  "5" => ["R", "P", "F", "Z", "T", "D", "C", "B"],
  "6" => ["T", "H", "C", "G"],
  "7" => ["S", "N", "V", "Z", "B", "P", "W", "L"],
  "8" => ["R", "J", "Q", "G", "C"],
  "9" => ["L", "D", "T", "R", "H", "P", "F", "S"]
}

File.read('input.txt').split("\n").each do |element|
  number = element.split(" ")

  # move 8 from 7 to 1
  # MOVE 2 from 2 to 1
 if number[1].to_i >= 1
  boxes[number.last] << boxes[number[3]].last(number[1].to_i)
 else
  boxes[number.last] << boxes[number[3]].last(number[1].to_i).reverse
 end

  boxes[number.last].flatten!
  number[1].to_i.times do
      boxes[number[3]].pop
  end
  result = []

  boxes.each_value do |value|
    result << value.last
  end
  p result.join("")
end
