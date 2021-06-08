a,b = gets.split.map(&:to_i)

puts a == b ? a : 3 - (a+b)