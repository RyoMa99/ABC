n,m = gets.split.map(&:to_i)

from_1 = []
to_n = []
m.times do |i|
  a,b = gets.split.map(&:to_i)

  from_1 << b if a == 1
  to_n << a if b == n
end

puts (from_1 & to_n).length >= 1 ? "POSSIBLE" : "IMPOSSIBLE"