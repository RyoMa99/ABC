N,M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sum

puts N >= A ? N - A : -1