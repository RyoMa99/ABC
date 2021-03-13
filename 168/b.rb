K = gets.to_i
S = gets.chomp

ans = ""
if K >= S.length
  ans = S
else
  ans = S.slice(0,K) + "..."
end

puts ans