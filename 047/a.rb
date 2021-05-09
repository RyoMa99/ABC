candies = gets.chomp.split.map(&:to_i).sort

puts candies[0..1].sum == candies[2] ? "Yes" : "No"