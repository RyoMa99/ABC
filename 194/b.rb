N = gets.to_i
A = []
B = []

N.times do |i|
  A[i],B[i] = gets.split.map(&:to_i)
end

ans = 0
if A.index(A.min) != B.index(B.min)
  ans = [A.min,B.min].max
elsif A.rindex(A.min) != B.index(B.min) || A.index(A.min) != B.rindex(B.min)
  ans = [A.min,B.min].max
else
  ans = [[A.sort[-2],B.min].max,A.min+B.min,[A.min,B.sort[-2]].max].min
end

puts ans