n = gets.to_i
upper = gets.chomp.split.map(&:to_i)
lower = gets.chomp.split.map(&:to_i)

max = 0

n.times do |i|
  upper_sum = upper[0..i].sum
  lower_sum = lower[i..-1].sum
  max = [max,upper_sum+lower_sum].max
end

puts max