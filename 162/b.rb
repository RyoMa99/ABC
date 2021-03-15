a = gets.to_i

puts [*1..a].select{|i| i % 3 != 0 && i % 5 != 0 }.sum
