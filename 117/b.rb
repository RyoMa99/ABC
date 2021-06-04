n = gets.to_i
n = gets.chomp.split.map(&:to_i).sort

puts n[0...-1].sum > n[-1] ? "Yes" : "No"