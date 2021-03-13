# テストを何件か失敗する
# 小数計算の精度の問題？
X,Y,R = gets.split.map{|i| (i.to_r*10000).to_i}

sum = 0
[*(Y - R).ceil..(Y + R).floor].each do |i|
  l = Math.sqrt((R**2 - (i - Y)**2))
  sum +=(X + l).floor - (X - l).ceil + 1
end

puts sum