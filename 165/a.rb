K = gets.to_i

A,B = gets.split.map(&:to_i)

ans = "NG"
A.upto(B) {|i| ans = "OK" if i % K == 0 }

puts ans