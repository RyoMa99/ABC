S = gets.chomp

ans = 0
(S.length/2).times do |i|
  ans += 1 if S[i] != S[-(i+1)]
end

puts ans