def g_1 x 
  x.to_s.split("").sort.reverse.join.to_i
end
def g_2 x 
  x.to_s.split("").sort.join.to_i
end

def f x 
  g_1(x) - g_2(x)
end

N,K = gets.split.map(&:to_i)

ans = N
1.upto(K) do |i|
  ans = f ans
end

puts ans
