S = gets.chomp.split("")
T = gets.chomp.split("")

ans = 0
S.length.times do |i|
  ans += 1 if S[i].eql?(T[i])
end

puts ans