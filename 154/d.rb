N,K = gets.chomp.split.map(&:to_i)
P = gets.chomp.split.map(&:to_i)
E = []
E[0] = 0
1.upto(P.length) do |i|
  E[i] = E[i-1] + Rational((1 + P[i-1]),2).to_f
end

max = -1
K.upto(N) do |i|
  sum = E[i]-E[i-K]
  max = sum if sum > max
end

puts printf("%0.7f",max)