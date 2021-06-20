n = gets.to_i
h = gets.chomp.split.map(&:to_i)
h << 0

ans = 0
1.upto(n) do |i|
  next if h[i] > h[i-1]
  ans += h[i-1] - h[i]
end

puts ans