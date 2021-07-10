n,x = gets.split.map(&:to_i)

puts x + n / 2 >= gets.split.map(&:to_i).sum ? "Yes" : "No"