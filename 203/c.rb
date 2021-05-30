n,k = gets.split.map(&:to_i)

man = {}
n.times do
  a,b = gets.split.map(&:to_i)
  if man.key?(a)
    man[a] += b
  else
    man[a] = b
  end
end
man = man.sort.to_h

proceed = 0
man.keys.each do |key|
  if proceed + k < key
    break
  else
    k = k - (key - proceed) + man[key]
    proceed = key
  end
end

puts proceed + k