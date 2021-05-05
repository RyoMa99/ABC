h_1,w_1 = gets.split.map(&:to_i)
h_2,w_2 = gets.split.map(&:to_i)

puts (h_1 == h_2) || (h_1 == w_2) || (h_2 == w_1) ? "YES" : "NO"