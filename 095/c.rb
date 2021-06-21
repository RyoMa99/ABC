a,b,c,x,y = gets.split.map(&:to_i)

ans = 0
if a+b > c*2
  if x > y
    ans = c * y * 2 + a * (x - y)
  else
    ans = c * x * 2 + b * (y - x)
  end
  ans = [ans,c*2*[x,y].max].min
else
  ans = a * x + b * y
end

puts ans