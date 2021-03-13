N = gets.to_i

min = 2 * 10**9

N.times do |i|
  a, pn, x = gets.split.map(&:to_i)
  min = pn if (x - a) > 0 && min > pn
end

puts min != 2 * 10**9 ? min : -1