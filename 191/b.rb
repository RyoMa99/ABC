N,X = gets.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a.delete(X)

puts a.join(" ")