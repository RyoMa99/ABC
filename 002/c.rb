dx,dy,a,b,c,d = gets.split.map(&:to_f)

puts ((a-dx)*(d-dy) - (b-dy)*(c-dx)).abs / 2