R,X,Y = gets.split.map(&:to_i)

line = Math.sqrt(X**2 + Y**2)

ans = if (line == R)
  1
elsif (line <= R + R)
  2
else
  (line.to_r / R).ceil
end

puts ans