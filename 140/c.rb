N= gets.to_i
B = gets.chomp.split.map(&:to_i)
A = []
A << B[0]

1.upto(B.length-1) do |i|
  A << [B[i-1],B[i]].min
end

A << B.last

puts A.sum