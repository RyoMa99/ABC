n = gets.to_i
s = gets.chomp.chars

puts s.index("1") % 2 == 0 ? "Takahashi" : "Aoki"