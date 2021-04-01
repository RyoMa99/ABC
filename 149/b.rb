A,B,K = gets.split.map(&:to_i)

ans = if A >= K
  "#{A-K} #{B}"
elsif B-(K-A) >= 0
  "0 #{B-(K-A)}"
else
  "0 0"
end

puts ans