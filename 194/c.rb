N = gets.to_i
A = gets.chomp.split.map(&:to_i)

sum = 0
1.upto(A.length-1) do |i|
  sum += i*(A[i]**2) - A[0]*i*A[i] - i*A[i]*A[i-1] + i*(A[0]**2)/2 + i*(A[i-1]**2)/2
end

puts sum