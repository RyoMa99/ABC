A,B = gets.split.map(&:to_i)

ans = -1
13.upto(1009) do |i|
  if A == (i * Rational(8,100)).to_i && B == (i * Rational(10,100)).to_i
    ans = i 
    break
  end
end

puts ans