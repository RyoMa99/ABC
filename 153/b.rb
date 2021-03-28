H,N = gets.to_i
A_sum = gets.split.map(&:to_i).sum 

puts A_sum >= H ? "Yes" : "No"