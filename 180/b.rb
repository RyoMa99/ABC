N = gets.to_i
x = gets.chomp.split.map{|i| i.to_i.abs}

man = x.sum
puts man

yu = Math.sqrt(x.map{|i| i**2}.sum)
puts yu

che= x.max
puts che
