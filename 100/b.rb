d,n = gets.chomp.split.map(&:to_i)

puts n == 100 ? 101 * 100**d : n * 100**d