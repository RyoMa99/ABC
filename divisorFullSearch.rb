# 約数の全列挙は与えられた実数の平方根までを探して対となる数字と一緒にlistに追加すれば良い
require "set"
N = 36

list = Set.new

1.upto(Math.sqrt(N).ceil) do |i|
  if N % i == 0
    list.add i
    list.add N / i
  end
end

pp list.to_a