n = [2,1]

2.upto(86) do |i|
  n << n[i-1] + n[i-2]
end

puts n[gets.to_i]