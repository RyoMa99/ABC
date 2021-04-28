ans = 0

12.times do
  ans += 1 if /.*r.*/ =~ gets.chomp
end

puts ans