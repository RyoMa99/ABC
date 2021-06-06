x = gets.to_i

ans = 1
2.upto(x**0.5) do |i|
  n = 2
  while true
    if x < i**n
      ans = i**(n-1) if ans < i**(n-1)
      break
    end
    n += 1
  end
end

puts ans