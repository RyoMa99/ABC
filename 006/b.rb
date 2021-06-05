n = gets.to_i

case n 
when 1 then puts 0
when 2 then puts 0
when 3 then puts 1
else
  tri = [0,0,1]
  (n-3).times do
    tri.push(tri.sum)
    tri.shift
  end
  puts tri[-1] % 10007
end