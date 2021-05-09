w,h,n = gets.split.map(&:to_i)

w_x_s = 0
w_x_e = w
w_y_s = 0
w_y_e = h

n.times do 
  x,y,a = gets.split.map(&:to_i)

  case a 
  when 1
    w_x_s = [x,w_x_s].max
  when 2
    w_x_e = [x,w_x_e].min
  when 3
    w_y_s = [y,w_y_s].max
  when 4
    w_y_e = [y,w_y_e].min
  end
end

puts [(w_x_e - w_x_s),0].max * [(w_y_e - w_y_s),0].max