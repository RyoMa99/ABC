S = []
gets.to_i.times do |i|
  S << gets.chomp.split("").sort.join
end

ans = 0
# group_by(&:itself)で要素自身でグループ化する
# itselfは要素自身
# group_by(&:itself)後は下のようになる。

# 例
# 5
# abaaaaaaaa
# oneplustwo
# aaaaaaaaba
# twoplusone
# aaaabaaaaa

#{"aaaaaaaaab"=>["aaaaaaaaab", "aaaaaaaaab", "aaaaaaaaab"], "elnoopstuw"=>["elnoopstuw", "elnoopstuw"]}

S.group_by(&:itself).tap{|el| p el}.transform_values(&:size).each_value do |value|
  ans += value * (value-1) / 2
end

puts ans