m = gets.to_i

ans = if m < 100
  0
elsif m <= 5000
  m / 100
elsif m <= 30000
  m / 1000 + 50
elsif m <= 70000
  (m / 1000 - 30) / 5  + 80
else
  89
end

puts printf("%02d",ans)