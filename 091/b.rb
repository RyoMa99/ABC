n = gets.to_i

s = []
n.times do
  s << gets.chomp
end

s = s.group_by(&:itself).transform_values(&:count)

m = gets.to_i

m.times do 
  str = gets.chomp
  s[str] -= 1 if s.has_key?(str)
end

puts s.values.max > 0 ? s.values.max : 0