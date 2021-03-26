N = gets.to_i
puts gets.chomp.split.map(&:to_i).select{|num| num % 2 == 0 && (num % 3 != 0 && num % 5 != 0) }.empty? ? "APPROVED" : "DENIED"