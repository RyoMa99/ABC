costs = []
n = gets.to_i
a = gets.split.map(&:to_i)

-100.upto(100) do |i|
  cost = 0
  a.each do |num|
    cost += (num-i) ** 2
  end
  costs << cost
end

puts costs.min