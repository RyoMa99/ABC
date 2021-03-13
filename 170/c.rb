X,N = gets.split.map(&:to_i)
P =gets.chomp.split.map(&:to_i)

i = 0
ans = 100000000000
while true
  if !P.include?(X-i) 
    ans = X - i
    break
  end
  if !P.include?(X+i) 
    ans = X + i
    break
  end
  i+= 1
end

puts ans