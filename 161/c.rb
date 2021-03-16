N,K = gets.split.map(&:to_i)

puts [N % K,(N % K - K).abs].min