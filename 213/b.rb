n = gets.to_i
a = {}
gets.chomp.split.each_with_index do |num,i|
  a[i+1] = num.to_i
end

p a.sort_by { |_, v| v}[-2][0]