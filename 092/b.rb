n = gets.to_i
d,x = gets.split.map(&:to_i)

ans = x
n.times do
  ans += (d / gets.to_f).ceil
end

puts ans