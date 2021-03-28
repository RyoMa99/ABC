h = gets.to_i

cnt = 1
attack_cnt = 1

while true
  break if h == 1
  
  h /= 2
  attack_cnt += 2 ** cnt
  cnt += 1
end

puts attack_cnt