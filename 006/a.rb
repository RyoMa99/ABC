N = gets.to_i

puts N % 3 == 0 || N.to_s.include?("3") ? "YES" : "NO"