n,m = gets.split.map(&:to_i)

positions = []
n.times do 
  positions << gets.chomp.split.map(&:to_i)
end

checkpoints = []
m.times do 
  checkpoints << gets.chomp.split.map(&:to_i)
end

ans = []

n.times do |i|
  min_distance = 10 ** 9
  checkpoint = -1

  m.times do |j|
    distance = (positions[i][0] - checkpoints[j][0]).abs + (positions[i][1] - checkpoints[j][1]).abs
    if min_distance > distance
      checkpoint = j + 1 
      min_distance = distance
    end
  end

  ans << checkpoint

end

puts ans