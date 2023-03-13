puts "Lütfen dosyanın tam konumunu giriniz: "
file_path = gets.chomp

if File.exists?(file_path)
  text = File.read(file_path)
  word_count = text.split.length
  puts "Dosyada toplam #{word_count} kelime var."
else
  puts "Dosya bulunamadı"
end
