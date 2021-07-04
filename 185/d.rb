require "set"
n,m = gets.split.map(&:to_i)
blue = Set.new(gets.chomp.split.map(&:to_i))
blue.add 0
blue.add n+1

blue = blue.to_a.sort
min_diff = n
(blue.length-1).times do |i|
  next if blue[i+1] - blue[i] - 1 == 0
  min_diff = [min_diff,blue[i+1] - blue[i] - 1].min
end

counts = 0
(blue.length-1).times do |i|
  next if blue[i+1] - blue[i] - 1 == 0
  counts += ((blue[i+1] - blue[i] - 1) / min_diff.to_f).ceil
end

puts counts