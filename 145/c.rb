def len(x_i,y_i,x_j,y_j)
  Math.sqrt((x_i - x_j) ** 2 + (y_i - y_j) ** 2)
end


N = gets.to_i

X = []
N.times do |i|
  X << gets.chomp.split.map(&:to_i)
end

pathes = [*0..(N-1)].permutation.to_a

total = 0

pathes.each do |path|
  (path.length - 1).times do |i|
    total += len(*X[path[i]],*X[path[i+1]])
  end
end

puts total / pathes.length