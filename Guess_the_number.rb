require 'securerandom'

tryCount = 0
guessNumber = SecureRandom.random_number(10)

puts "I have chosen a number. Let's see how many tries it takes you to guess it!"
puts "Please guess a number: "
userNumber = gets.chomp.to_i

continue = true

while continue do
  if userNumber == guessNumber
    if tryCount == 1
      puts "You found the number I chose on the first try! You're so lucky...\nAnother game? [y/n]"
    elsif tryCount == 2
      puts "You found the number I chose on the second try! It was close...\nAnother game? [y/n]"
    elsif tryCount == 3
      puts "You found the number I chose on the third try! I almost beat you :(\nAnother game? [y/n]"
    end
    userInput = gets.chomp.downcase
    if userInput == "n"
      continue = false
    else
      tryCount = 0
      guessNumber = SecureRandom.random_number(10)
      puts "Please guess a number: "
      userNumber = gets.chomp.to_i
      puts "I have chosen a number. Let's see how many tries it takes you to guess it!\nYour turn: "
    end
  else
    puts "Nope, that's not it. Try again: "
    tryCount += 1
    userNumber = gets.chomp.to_i
  end

  if tryCount == 4
    puts "Haha, I knew how to beat you! The number I chose was #{guessNumber}.\nAnother game? [y/n]"
    userInput = gets.chomp.downcase
    if userInput == "n"
      continue = false
    else
      tryCount = 0
      guessNumber = SecureRandom.random_number(10)
      puts "Please guess a number: "
      userNumber = gets.chomp.to_i
      puts "I have chosen a number. Let's see how many tries it takes you to guess it!\nYour turn: "
    end
  end
end

puts "Thanks for playing my game! :)"
