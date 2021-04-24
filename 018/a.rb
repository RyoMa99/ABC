a = gets.to_i
b = gets.to_i
c = gets.to_i

list = [a,b,c].sort.reverse

puts list.index(a)+1
puts list.index(b)+1
puts list.index(c)+1
