N = gets.to_i
S = gets.chomp.split("")

cnt = 0

S.length.times do |i|
  next unless S[i].eql?("A")
  cnt += 1 if S[i+1].eql?("B") && S[i+2].eql?("C")
end

puts cnt