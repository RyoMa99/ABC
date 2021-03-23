N,K = gets.split.map(&:to_i)

# 10進数をK進数にした時、元の10進数をKで対数取った値の床関数に+1した桁数になる
puts Math.log(N,K).floor + 1