S,T = gets.chomp.split
s_i,t_i = gets.split.map(&:to_i)

U = gets.chomp

s_i -= 1 if S.eql?(U)
t_i -= 1 if T.eql?(U)

puts "#{s_i} #{t_i}"