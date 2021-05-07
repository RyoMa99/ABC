n,l = gets.split.map(&:to_i)

str_arr = []
n.times do 
  str_arr << gets.chomp
end

puts str_arr.sort.join