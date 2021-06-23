s,c = gets.split.map(&:to_i)

if s*2 >= c
  puts c/2
else
  puts s + (c- s*2)/4
end
