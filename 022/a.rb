n,s,t = gets.split.map(&:to_i)
w = gets.to_i
ans = s <= w && w <= t ? 1 : 0

(n-1).times do
  a = gets.to_i
  w += a 

  ans += 1 if s <= w && w <= t
end

puts ans
