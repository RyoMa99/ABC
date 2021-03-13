mod = 1000000007
N = gets.to_i
A = gets.chomp.split.map(&:to_i)

# 累積和を使った考え方
# A[0] * A[1] + A[0] * A[2] + ... + A[0] * A[n-1] = A[0] * (A[1]..A[n-1]).sum と式変形できる
# なおかつ、(A[1]..A[n-1]).sum これも一度計算すれば何回も配列のsumを取る形にしなくとも減算すればよいから、計算量を減らせる
# 毎回sumを取るとO(n**2)なのが、O(2n)≒O(n)になる

sum = 0
array_sum = A.sum
(N-1).times do |i|
  array_sum -= A[i]
  sum += A[i] * array_sum
end
puts sum % mod

# TLE
# puts A.combination(2).to_a.inject(0){|sum,comb|sum += comb.inject(&:*) } % mod