a = gets.chomp.split.map(&:to_i).sort

ans = 0
2.times do |i|
  ans += a[i+1] - a[i]
end
puts ans