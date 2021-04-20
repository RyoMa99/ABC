n = gets.to_i

diff = 2025 - n 

1.upto(9) do |i|
  puts "#{i} x #{diff / i}" if diff % i == 0 && diff / i <= 9
end