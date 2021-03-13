L = gets.to_i

pattern = [*1..11].inject(1){|result,item| result * (L - item) }
puts pattern / [*1..11].inject(:*)