n = gets.to_i
a = gets.chomp.split.map(&:to_i)

ans = 0
a.each do |num|
  ans += case num
  when 2 then 1
  when 4 then 1
  when 5 then 2
  when 6 then 3
  when 8 then 1
  else 0
  end
end

puts ans