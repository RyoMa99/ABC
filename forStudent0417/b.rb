N,M = gets.split.map(&:to_i)

A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

puts ((A | B) - (A & B)).sort.join(" ")