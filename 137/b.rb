K,X = gets.split.map(&:to_i)

puts [*(X-K+1)..(X+K-1)].select{|num| -1000000 <= num && num <= 1000000 }.join(" ")