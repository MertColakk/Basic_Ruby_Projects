def WinnerFinder(choice, computerChoice)
  if choice == 1
    if computerChoice == 1
      puts "Your Choice: Rock\nComputer Choice: Rock"
      puts "Result: Draw."
    elsif computerChoice == 2
      puts "Your Choice: Rock\nComputer Choice: Paper"
      puts "Result: Computer Win."
    else
      puts "Your Choice: Rock\nComputer Choice: Scissors"
      puts "Result: User Win."
    end
  elsif choice == 2
    if computerChoice == 1
      puts "Your Choice: Paper\nComputer Choice: Rock"
      puts "Result: User Win."
    elsif computerChoice == 2
      puts "Your Choice: Paper\nComputer Choice: Paper"
      puts "Result: Draw."
    else
      puts "Your Choice: Paper\nComputer Choice: Scissors"
      puts "Result: Computer Win."
    end
  elsif choice == 3
    if computerChoice == 1
      puts "Your Choice: Scissors\nComputer Choice: Rock"
      puts "Result: Computer Win."
    elsif computerChoice == 2
      puts "Your Choice: Scissors\nComputer Choice: Paper"
      puts "Result: User Win."
    else
      puts "Your Choice: Scissors\nComputer Choice: Scissors"
      puts "Result: Draw."
    end
  else
    puts "Invalid Operation."
  end
end

loop do
  puts "What is your choice?\n1-Rock\n2-Paper\n3-Scissors"
  choice = gets.chomp.to_i
  computerChoice = rand(1..3)
  WinnerFinder(choice, computerChoice)
  puts "Another Game? [y/n]"
  isExit = gets.chomp.downcase
  break unless isExit == 'y'
end
