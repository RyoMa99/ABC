n,k = gets.split.map(&:to_i)

a = gets.chomp.split.map(&:to_i)

ans = 1
n -= k

ans += (n.to_f/(k-1)).ceil

puts ans