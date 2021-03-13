N = gets.to_i
L = gets.chomp.split.map(&:to_i)

ans = 0
L.combination(3).each { |comb|
  comb.sort!
  ans += 1 if comb.uniq.size == 3 && comb[0] + comb[1] > comb[2]
}

puts ans