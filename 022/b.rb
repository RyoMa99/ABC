n = gets.to_i

passed = []
n.times do
  passed << gets.to_i
end

puts n - passed.uniq.count