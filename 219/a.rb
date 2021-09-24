x = gets.to_i
if x >= 90
  puts "expert"
elsif x >= 70
  puts (90 - x)
elsif x >= 40
  puts (70 - x)
else
  puts (40 - x)
end 