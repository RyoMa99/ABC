n,a,x,y = gets.split.map(&:to_i)

if n >= a
  puts a * x + (n-a) * y
else
  puts n * x
end