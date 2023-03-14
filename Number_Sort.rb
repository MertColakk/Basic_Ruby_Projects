puts "Please enter the range: "
rangeNumbers = gets.to_i
puts "Please enter the numbers: "
numbers = []
for i in 1..rangeNumbers
  numbers.push(gets.to_i)
end
sorted_numbers = numbers.sort
puts "The sorted number list: #{sorted_numbers}"
