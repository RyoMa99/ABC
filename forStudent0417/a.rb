X,Y,Z = gets.split.map(&:to_i)

puts Rational(Y * Z-1,X).to_i