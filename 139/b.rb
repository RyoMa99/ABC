# 口1個の時はタップ要らない
A,B = gets.split.map(&:to_i)

puts ((B - A) / (A - 1).to_f).ceil + 1