N,D = gets.split.map(&:to_i)

ans = 0

N.times do
  x,y = gets.split.map(&:to_i)
  ans += 1 if D  >= Math.sqrt(x**2 + y**2)
end

puts ans