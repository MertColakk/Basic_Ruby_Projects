def Sum(n1,n2)
  return n1+n2
end

def Extraction(n1,n2)
  return n1-n2
end

def Multiplication(n1,n2)
  return n1*n2
end

def Division(n1,n2)
  if n2 == 0
    return "A number can't divide to zero"
  else
    return n1/n2.to_f
  end
end

puts "Please select an operation (+,-,*,/)"
operation = gets.chomp

if operation != "+" && operation != '-' && operation != '*' && operation != '/'
  puts "Invalid operation.."
else
  puts "Please enter the first number: "
  n1 = gets.chomp.to_f
  puts "Please enter the second number: "
  n2 = gets.chomp.to_f
end

case operation
when "+"
  result = Sum(n1,n2)
  puts "Result: #{result}"
when "-"
  result = Extraction(n1,n2)
  puts "Result: #{result}"
when "*"
  result = Multiplication(n1,n2)
  puts "Result: #{result}"
when "/"
  result = Division(n1,n2)
  puts "Result: #{result}"
end
