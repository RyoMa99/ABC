n = gets.to_i

ans = 10 ** 9

(n ** 0.5).to_i.downto(1) do |i|
  pair = n / i
  t = (pair - i).abs + (n - pair * i)
  ans = t if ans > t
end

puts ans