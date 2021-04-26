a,b,c,k = gets.split.map(&:to_i)
s,t = gets.split.map(&:to_i)

total = s * a + t * b
puts s + t >= k ? total - (s+t) * c : total