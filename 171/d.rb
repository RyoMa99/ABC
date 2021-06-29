n = gets.to_i
a = []
a.fill(0,0..10**5)
sum = 0
gets.chomp.split.map(&:to_i).each do |num|
  sum += num
  a[num] += 1
end

gets.to_i.times do
  b,c = gets.split.map(&:to_i)
  puts sum += (c - b) * a[b]
  a[c] += a[b]
  a[b] = 0
end