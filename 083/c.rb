x,y = gets.split.map(&:to_i)

i = 1
while true
  break if x * 2**i > y
  i += 1
end

puts i