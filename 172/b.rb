S = gets.chomp
T = gets.chomp

ans = 0
S.size.times do |i|
  ans += 1 if !S[i].eql?(T[i])
end 
puts ans