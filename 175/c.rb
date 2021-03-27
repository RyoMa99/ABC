x,K,D = gets.split.map(&:to_i)
x = x.abs

# 0を挟んで往復する前に移動回数が終わる
if x / D > K
  puts x - (D * K)
  exit
end

# 往復
cnt = K - (x / D)
x %= D
puts  cnt % 2 == 0 ? x : (x-D).abs