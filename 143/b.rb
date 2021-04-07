N = gets.to_i
d = gets.chomp.split.map(&:to_i)

p d.combination(2).to_a.inject(0){|sum,comb| sum + comb[0] * comb[1]}