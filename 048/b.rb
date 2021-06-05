a,b,x = gets.split.map(&:to_i)

A = -(-a / x)
B = b / x

puts B - A + 1