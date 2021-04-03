A = gets.split.map(&:to_i)

puts A.sum >= 22 ? "bust" : "win"