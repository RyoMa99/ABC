n = gets.to_i

a = gets.chomp.split.map(&:to_i)

ans = a.select{|el| el != 0}

p (ans.sum / ans.length.to_f).ceil