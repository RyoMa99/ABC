A,B,C = gets.split.map(&:to_i)

puts A > B || (A == B && C == 1) ? "Takahashi" : "Aoki"