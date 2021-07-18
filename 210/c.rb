n,k = gets.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)

tmp = {}
k.times do |i|
  if tmp.key?(c[i])
    tmp[c[i]] += 1
  else
    tmp[c[i]] = 1
  end
end
cnts = []
cnts << tmp.count

1.upto(n-k) do |i|
  cnt = cnts[-1]

  tmp[c[i-1]] -= 1
  if tmp[c[i-1]] == 0
    tmp.delete(c[i-1])
    cnt -= 1
  end

  if tmp.key?(c[i+k-1])
    tmp[c[i+k-1]] += 1
  else
    tmp[c[i+k-1]] = 1
    cnt += 1
  end
  cnts << cnt
end

puts cnts.max