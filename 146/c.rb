## まだ途中　無限ループになるときがある
A,B,X = gets.split.map(&:to_i)

def price(n,a=A,b=B)
  a * n + b * n.to_s.length
end


ans = 10 ** 9

while true
  pri = price(ans)
  if pri == X
    break
  elsif pri < X
    break if price(ans+1) > X
    ans += (ans / 2)
  else
    if price(ans-1) < X
      ans -= 1
      break
    end
    ans /= 2
  end
end

puts ans