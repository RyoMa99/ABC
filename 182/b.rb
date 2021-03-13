N = gets.to_i

A = gets.chomp.split.map(&:to_i)

max_count = 0
ans = -1

2.upto(A.max) do |i|
  count = 0
  A.each{|e| count+= 1 if e % i == 0}
  if max_count <= count
    max_count = count
    ans = i 
  end
  break if max_count == A.length
end

puts ans