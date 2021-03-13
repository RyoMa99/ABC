A,B = gets.split.map(&:to_i)

ans = 0
if A+B >= 15 && B >= 8
  ans = 1
elsif A+B >= 10 && B >= 3
  ans = 2
elsif A+B >= 3
  ans = 3
else
  ans = 4
end

puts ans
