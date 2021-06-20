n = gets.to_i
a = gets.chomp.split.map(&:to_i).sort

ans = 0

num = a[0]
cnt = 1
1.upto(n-1) do |i|
  if num == a[i]
    cnt += 1
    next
  end

  ans += (n - i) * cnt
  num = a[i]
  cnt = 1
end

puts ans