N = gets.to_i
A = gets.chomp.split.map(&:to_i)
satisfication = gets.chomp.split.map(&:to_i).sum
C = gets.split.map(&:to_i)

(A.length-1).times do |i|
  satisfication += C[A[i]-1] if A[i] + 1 == A[i+1]
end

puts satisfication