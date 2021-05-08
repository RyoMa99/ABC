n = gets.to_i
a = gets.chomp.split.map(&:to_i).group_by{|num| num % 200}.transform_values(&:count).inject(0){|sum,item| sum + item[1]*(item[1]-1) / 2}

p a 