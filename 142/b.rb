N, K = gets.split.map(&:to_i)

H = gets.chomp.split.map(&:to_i)

puts H.select { |i| i >= K }.length