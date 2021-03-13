N = gets.to_i
A = gets.chomp.split.map(&:to_i)
A_1,A_2 = A.each_slice(2**N/2).to_a
puts A_1.max >= A_2.max ? A.index(A_2.max)+1 : A.index(A_1.max)+1
