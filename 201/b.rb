mounts = {}

gets.to_i.times do 
  m,h = gets.split
  mounts[m] = h.to_i
end

puts mounts.sort_by { |_, v| v }.reverse.to_h.keys[1]