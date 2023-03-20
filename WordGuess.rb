remaininCount = 0
wordlist = ["ADVENTURE","BICYCLE","CAMERA","DETECTIVE","ELEPHANT","FOOTBALL","FOOTBALL","GUITAR","HORIZON","ISLAND","JIGSAW","KANGAROO","LEMONADE","MOUNTAIN","NOTEBOOK","ORCHESTRA","PINEAPPLE","RAINBOW","SPIDER","TELESCOPE","UMBRELLA"]
selected = wordlist.sample

puts "HINT: #{wordlist}"

puts "Your Guess? "
userWord = gets.chomp

while remaininCount != 3
    if userWord == selected
        puts "Correct."
        puts "Another Game? [y/n]"
        isCont = gets.chomp
        if not(isCont == "y")
            break
        else
            system("clear")
            remaininCount = 0
            selected = wordlist.sample
            puts "Your Guess? "
            userWord = gets.chomp
        end
    else
        puts "Incorrect."
        remaininCount += 1
        puts "Guess Again: "
        userWord = gets.chomp
    end
end

puts "\n\n\nThanks For Playing"
