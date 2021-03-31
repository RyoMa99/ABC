N = gets.to_i 
P = gets.split.join.to_i
Q = gets.split.join.to_i

numbers = (1..N).to_a.permutation(N).to_a.map(&:join).map(&:to_i)

puts (numbers.index(P) - numbers.index(Q)).abs