n,m,x,y = gets.split.map(&:to_i)

x_max = [x,gets.chomp.split.map(&:to_i)].flatten.max
y_min = [y,gets.chomp.split.map(&:to_i)].flatten.min

puts x_max < y_min ? "No War" : "War"