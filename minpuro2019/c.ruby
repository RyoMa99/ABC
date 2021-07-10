k,a,b = gets.split.map(&:to_i)

if k < a || a+2 >= b
  puts k+1
  exit
end

change_cnt = k-(a-1)
ans = change_cnt / 2 * (b-a) + a
ans += 1 if change_cnt % 2 == 1

puts ans
