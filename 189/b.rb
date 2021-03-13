=begin
  浮動小数計算は誤差を生む
  処理の中では出来るだけ整数計算になるようにする
=end

rescue => exception
  
end
N,X = gets.chomp.split.map(&:to_i)

a = 0
out = -1

N.times do |i|
  v,t = gets.chomp.split.map(&:to_i)
  a += v * t
  if a > (X * 100)
    out = i + 1
    break
  end
end

puts out