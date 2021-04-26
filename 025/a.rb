s = gets.chomp
n = gets.to_i
puts "#{s[(n-1)/5]}#{s[n%5-1]}"