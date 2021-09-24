s = []
3.times do
  s << gets.chomp
end

t = gets.chomp.chars.map(&:to_i).map{|i| i - 1}

ans = ""
t.each do |i|
  ans += s[i]
end

puts ans