# A,B = gets.chomp.split(' ').map{|n| n.split('').map(&:to_i).sum }

# puts A > B ? A : B

puts gets.chomp.split(' ').map{|n| n.split('').map(&:to_i).sum }.max