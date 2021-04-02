A = gets.to_i
B = gets.to_i

puts [*1..3].select { |i| i != A && i != B }