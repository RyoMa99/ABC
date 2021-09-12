n = gets.to_i
s = gets.chomp.chars

if s[n-1].eql?("o")
  puts "Yes"
else
  puts "No"
end