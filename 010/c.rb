x_0,y_0,x_1,y_1,t,v = gets.split.map(&:to_i)
move = t * v
n = gets.to_i

n.times do |i|
  x_t,y_t = gets.split.map(&:to_i)
  dist = Math.sqrt((x_0-x_t)**2 + (y_0-y_t)**2) + Math.sqrt((x_t-x_1)**2 + (y_t-y_1)**2)
  if move >= dist
    puts "YES"
    exit
  end
end

puts "NO"