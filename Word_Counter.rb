puts "Please enter the full path of file: "
file_path = gets.chomp

if File.exists?(file_path)
  text = File.read(file_path)
  word_count = text.split.length
  puts "The file contains #{word_count} word/words."
else
  puts "File not found."
end
