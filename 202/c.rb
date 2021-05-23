n = gets.to_i

a = gets.chomp.split.map(&:to_i).group_by(&:itself).transform_values(&:count)

b = gets.chomp.split.map(&:to_i)

c = gets.chomp.split.map(&:to_i).group_by(&:itself).transform_values(&:count)

bc = {}
b.length.times do |i|
  next unless c.has_key?(i+1)
  if bc.has_key?(b[i])
    bc[b[i]] += c[i+1]
  else
    bc[b[i]] = c[i+1]
  end
end

ans = 0
a.map do |k,v|
  next unless bc.has_key?(k)
  ans += a[k] * bc[k]
end

puts ans