N = gets.to_i
A = gets.chomp.split.map(&:to_i)

sum = 0
1.upto(N-1) do |i|
  next if A[i-1] <= A[i]
  
  diff = A[i-1] - A[i]  
  A[i] += diff
  sum += diff
end

puts sum