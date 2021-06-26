n = gets.to_i
x = gets.chomp.split.map(&:to_i)
sorted_x = x.sort

middle = sorted_x[n/2]
premiddle = sorted_x[n/2-1]

n.times do |i|
  if x[i] < middle
    puts middle
  else
    puts premiddle
  end
end