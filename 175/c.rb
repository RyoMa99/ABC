x,K,D = gets.split.map(&:to_i)

pos = []
pos[0] = x
ans = 0
1.upto(K) do |i|
  x = (x + D).abs > (x - D).abs ? x - D : x + D
  pos[i] = x
  ans = x.abs
  if i >= 2 && pos[i-2] == pos[i]
    ans = (K - i) % 2 == 0 ? pos[i].abs : pos[i-1].abs
    break
  end
end
pp pos
pp ans