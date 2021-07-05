a,b = gets.split.map(&:to_i)

puts 1*a <= b && b <= 6*a ? "Yes" : "No"