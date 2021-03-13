a, b, c, d = gets.split.map(&:to_i)

ans = ""
while true
  if (c -= b) <= 0
    ans = "Yes"
    break
  end
  if (a -= d) <= 0
    ans = "No"
    break
  end
end

puts ans