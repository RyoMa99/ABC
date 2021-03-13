sum = gets.chomp.to_i
sum += gets.chomp.split(" ").map(&:to_i).sum
puts "#{sum} #{gets.chomp}"