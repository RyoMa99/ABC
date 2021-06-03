n = gets.to_i

puts gets.chomp.split.group_by(&:itself).length == 3 ? "Three" : "Four"