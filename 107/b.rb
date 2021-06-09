h,w = gets.split.map(&:to_i)

mass = []
h.times do |i|
  line = gets.chomp.chars
  mass << line if line.include?("#")
end

delete_index = []
w.times do |i|
  mass.length.times do |j|
    break if mass[j][i] == "#"
    delete_index << i if j == mass.length-1
  end
end

mass.each do |line|
  puts line.select.with_index{|num,index| num unless delete_index.include?(index)}.join
end