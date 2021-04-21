n,x = gets.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

ans = 0
n.times do |i|
  ans += a[i] if x & 1 << i != 0
end

puts ans