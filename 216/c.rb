n = gets.to_i

ans = ''
while n >= 1 do
  if n % 2 == 1
    ans += 'A'
    n -= 1
  else
    ans += 'B'
    n /= 2
  end
end

puts ans.reverse