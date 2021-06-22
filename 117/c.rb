n,m = gets.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i).sort

nums = []
(m-1).times do |i|
  nums << x[i+1] - x[i]
end

puts nums.sort[0..-n].sum