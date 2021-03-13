x,y = gets.split.map(&:to_i)#.sort
# puts (x > y && x < y+3) || (y > x && y < x+3) ? "Yes" : "No"
puts (x-y).abs <= 2 ? "Yes" : "No"