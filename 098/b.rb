n = gets.to_i
s = gets.chomp.chars

ans = []
(n-1).times do |i|
  ans << (s[0..i] & s[(i+1)..-1]).count
end

puts ans.max