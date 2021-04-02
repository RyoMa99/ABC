N = gets.to_i
A = gets.chomp.split.map(&:to_i)

expectedNum = 1
ans = 0

A.each do |i|
  if i == expectedNum
    expectedNum += 1
  else
    ans += 1
  end
end

puts ans == N ? -1 : ans