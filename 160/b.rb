X = gets.to_i

happiness = 0

happiness += X / 500 * 1000

happiness += X % 500 / 5 * 5

puts happiness