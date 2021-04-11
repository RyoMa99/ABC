N = gets.to_i
H = gets.chomp.split.map(&:to_i)

ans = 0
cnt = 0
(N-1).times do |i|
  if H[i] >= H[i+1]
    cnt += 1
    next
  end

  ans = cnt if cnt > ans
  cnt = 0
end
ans = cnt if cnt > ans

puts ans