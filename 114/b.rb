s = gets.chomp

min = 1000
(s.length-2).times do |i|
  min = [min,(753 - s[i..i+2].to_i).abs].min
end

puts min