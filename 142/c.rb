N = gets.to_i
A = gets.chomp.split.map(&:to_i)

ans = Array.new(N,0)

A.length.times do |i|
  ans[A[i]-1] = i+1
end

puts ans.join(" ")