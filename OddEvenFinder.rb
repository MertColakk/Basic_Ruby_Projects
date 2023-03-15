while 1
    puts "Please enter the number: "
    number = gets.chomp.to_i
    if number % 2 == 0
        puts "The number is even."
    elsif number == 0
        puts "The number is zero."
    else
        puts "The number is odd."
    end
    puts "Do you want to continue? [y/n]"
    operation = gets.chomp.to_s
    if operation == "n"
        break
    end
end
