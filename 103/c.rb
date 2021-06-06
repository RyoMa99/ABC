n = gets.to_i
puts gets.chomp.split.map(&:to_i).inject(0){|ans,el| ans += (el - 1)}