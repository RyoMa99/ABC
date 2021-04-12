N = gets.to_i
V = gets.split.map(&:to_f).sort

puts V.inject{|result,item| (result + item) / 2}