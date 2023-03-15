puts "Please enter the class size: "
size = gets.chomp.to_i
sum = 0
notes = []

for i in 0...size
    puts "Please enter the note: "
    note = gets.chomp.to_f
    notes << note
    sum += note
end

average = sum / size
puts "Classes note average is #{average}"

passedCount = 0
failedCount = 0

for i in 0...size
    if notes[i] >= average
        passedCount += 1
    else
        failedCount += 1
    end
end

puts "#{passedCount} students passed."
puts "#{failedCount} students failed."
