K,N  = gets.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a.unshift a[-1] - K

p a.each_cons(2).to_a.map{|dists| K - (dists[1] - dists[0])}.min