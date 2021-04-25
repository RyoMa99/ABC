n = gets.to_i
route = gets.chomp.split.map(&:to_i)
k = gets.to_i
route.concat gets.chomp.split.map(&:to_i)

puts route.length == route.uniq.length ? "YES" : "NO"