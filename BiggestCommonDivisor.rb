puts "Please enter first number: "
number1 = gets.chomp.to_i

puts "Please enter second number: "
number2 = gets.chomp.to_i

if number1 >= number2
    numberRange = number2
else
    numberRange = number1
end

for i in 1..numberRange
    if number1%i == 0 and number2%i == 0
        commonDivisior = i
    end
end

puts "Biggest common divisor between #{number1} and #{number2} is #{commonDivisior}"
