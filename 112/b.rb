min = 1001

n,t = gets.split.map(&:to_i)

n.times do 
  c,a = gets.split.map(&:to_i)
  next unless a <= t
  min = [min,c].min
end

puts min == 1001 ? "TLE" : min