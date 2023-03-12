def Toplama(n1,n2)
  return n1+n2
end

def Cikarma(n1,n2)
  return n1-n2
end

def Carpma(n1,n2)
  return n1*n2
end

def Bolme(n1,n2)
  if n2 == 0
    return "Bir sayı sıfıra bölünemez"
  else
    return n1/n2.to_f
  end
end

puts "Lütfen işlem seçiniz (+,-,*,/)"
operation = gets.chomp

if operation != "+" && operation != '-' && operation != '*' && operation != '/'
  puts "Geçersiz işlem"
else
  puts "Lütfen ilk sayıyı giriniz: "
  n1 = gets.chomp.to_f
  puts "Lütfen ikinci sayıyı giriniz: "
  n2 = gets.chomp.to_f
end

case operation
when "+"
  sonuc = Toplama(n1,n2)
  puts "Sonuç: #{sonuc}"
when "-"
  sonuc = Cikarma(n1,n2)
  puts "Sonuç: #{sonuc}"
when "*"
  sonuc = Carpma(n1,n2)
  puts "Sonuç: #{sonuc}"
when "/"
  sonuc = Bolme(n1,n2)
  puts "Sonuç: #{sonuc}"
end
