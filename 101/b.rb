n = gets.chomp

puts n.to_i % n.chars.map(&:to_i).sum == 0 ? "Yes" : "No"