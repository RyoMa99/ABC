x_1,y_1,x_2,y_2 = gets.split.map(&:to_i)

puts "#{x_2-(y_2-y_1)} #{y_2+(x_2-x_1)} #{x_1-(y_2-y_1)} #{y_1+(x_2-x_1)}"