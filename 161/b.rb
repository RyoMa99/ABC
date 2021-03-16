N,M = gets.split.map(&:to_i)

A = gets.split.map(&:to_i)

pass_line = (A.sum / (4.0 * M)).ceil

puts A.select{|i| i >= pass_line}.length >= M ? "Yes" : "No"

