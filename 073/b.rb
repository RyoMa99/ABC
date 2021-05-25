ans = 0

gets.to_i.times do 
  l,r = gets.split.map(&:to_i)
  ans += r - l + 1
end

puts ans