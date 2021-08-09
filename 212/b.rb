a,b,c,d = gets.chomp.chars

if a == b && b == c && c == d
  puts "Weak"
  exit
end

if (a.to_i + 1) % 10 == b.to_i && (b.to_i + 1) % 10 == c.to_i && (c.to_i + 1) % 10 == d.to_i
  puts "Weak"
  exit
end

puts "Strong"