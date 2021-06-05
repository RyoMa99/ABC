s = gets.chomp.split("")
t = gets.to_i

x,y = 0,0
q_cnt = 0

s.each do |c|
  case c
  when "U"
    x += 1
  when "D"
    x -= 1
  when "L"
    y -= 1
  when "R"
    y += 1
  else
    q_cnt += 1
  end
end

case t
when 1
  puts x.abs + y.abs + q_cnt
when 2
  sum = x.abs + y.abs
  if sum > q_cnt
    puts sum - q_cnt
  else
    puts (sum - q_cnt) % 2
  end
end