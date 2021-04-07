N = gets.to_i
S = gets.chomp.split("")

total = 1
before_color = S[0]
1.upto(N-1) do |i|
  next if before_color.eql?(S[i])
  before_color = S[i]
  total += 1
end

puts total