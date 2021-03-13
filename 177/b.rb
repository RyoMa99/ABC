S = gets.chomp
T = gets.chomp

iter = S.length - T.length + 1
ans = []

iter.times do |i|
  match_count = 0
  T.length.times do |j|
    match_count += 1 if S[i+j] == T[j]
  end
  ans << T.length - match_count
end

puts ans.min