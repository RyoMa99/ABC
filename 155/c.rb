N = gets.to_i
strs = {}
N.times do |i|
  item =gets.chomp
  if strs.key?(item)
    strs[item] += 1
  else
    strs[item] = 0
  end
end

max = strs.values.max
puts strs.select{|key,value| value == max}.keys.sort