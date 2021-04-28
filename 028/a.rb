n = gets.to_i

if n < 60
  puts "Bad"
elsif n < 90
  puts "Good"
elsif n < 100
  puts "Great"
else
  puts "Perfect"
end