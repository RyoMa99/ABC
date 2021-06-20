n,k = gets.split.map(&:to_i)
h = []
n.times do
  h << gets.to_i
end

h = h.sort.reverse

min = 10**9

(n-k+1).times do |i|
  min = [min,h[i]-h[i+k-1]].min
end

puts min