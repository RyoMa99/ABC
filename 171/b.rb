N,K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

# TLE
# puts P.combination(K).to_a.map(&:sum).min

puts P.sort.slice(0,K).sum