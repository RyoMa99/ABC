cnt = 1
n = gets.to_i
c = gets.chomp.split.map(&:to_i).sort
n.times do |i|
  cnt = (cnt * (c[i] - i)) % (10**9 + 7)
end
puts cnt