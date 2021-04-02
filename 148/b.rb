N = gets.to_i
S,T = gets.chomp.split

ans = ""
N.times do |i|
  ans << S[i]
  ans << T[i]
end

puts ans