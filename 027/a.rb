a,b,c = gets.split.map(&:to_i)

ans = if a == b
  c
elsif a == c
  b
else
  a
end

puts ans