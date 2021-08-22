# エラトステネスの篩の考え方
# 1からmまでの数字の内、a_iの素因数の倍数を除外した数が解になる

n,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
fl = Array.new(10**5+5,true)

# xの素因数のリストを返す
def pfact(x)
  res = []
  i = 2
  while i**2 <= x
    while x % i == 0
      x /= i
      res.push(i)
    end
    i+=1
  end
  res.push(x) if x != 1
  return res
end

n.times do |i|
  v = pfact(a[i])
  # mが取りうる最大数より小さい数(10**5追加で5個)の範囲で、素数の倍数を除外する
  v.each do |num|
    # fl[num]の時だけ倍数を除外する処理をするので複数回登場する素数は無視され、計算が高速化される
    num.step(10**5+5,num){ |multi_num| fl[multi_num] = false } if fl[num]
  end
end

# 残った数が答えになる
ans = []
1.upto(m) do |i|
  ans << i if fl[i]
end

puts ans.length
puts ans

