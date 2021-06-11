n = gets.chars

if (n[0]*3).to_i >= n.join.to_i
  puts (n[0]*3).to_i
else
  puts ((n[0].to_i+1).to_s*3).to_i
end