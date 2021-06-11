n = gets.to_i

items = []
n.times do 
  items << gets.to_i
end

items.sort!

items[-1] /= 2

puts items.sum