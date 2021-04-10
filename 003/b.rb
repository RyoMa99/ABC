S = gets.chomp.split("")
T = gets.chomp.split("")

ans = "You can win"
S.length.times do |i|
  ans = "You will lose" unless S[i] == T[i] || (S[i] == "@" && ["a","t","c","o","d","e","r"].include?(T[i])) || (T[i] == "@" && ["a","t","c","o","d","e","r"].include?(S[i]))
end

puts ans
