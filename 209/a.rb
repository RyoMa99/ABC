a,b = gets.split.map(&:to_i)

ans = b - a + 1
puts ans > 0 ? ans : 0