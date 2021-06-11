n = gets.split.map(&:to_i)

n.sort!

puts n[2]*10 + n[1] + n[0]