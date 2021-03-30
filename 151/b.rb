N,K,M = gets.split.map(&:to_i)

total = gets.split.map(&:to_i).sum



ans = if N * M - total < 0
  0
elsif N * M - total > K
  -1
else
  N * M - total
end

puts ans