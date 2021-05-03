w,h = gets.split.map(&:to_i)

puts (w%16 == 0 && h%9 == 0 ) ? "16:9" : "4:3"