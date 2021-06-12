t,x,y = 0,0,0

ans = "Yes"
gets.to_i.times do
  t_n,x_n,y_n = gets.split.map(&:to_i)
  dt = t_n - t
  dd = (x-x_n).abs + (y-y_n).abs
  ans = "No" unless dt >= dd && (dt-dd) % 2 == 0
  t,x,y = t_n,x_n,y_n
end

puts ans