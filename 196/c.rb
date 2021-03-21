N = gets.to_i

1.upto(1000001) do |i|
  if (i.to_s * 2).to_i > N # 文字列を2倍すれば同じ数字が2つ並ぶ
    puts i-1
    break
  end
end