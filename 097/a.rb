a,b,c,d = gets.split.map(&:to_i)

puts (a-c).abs <= d || ((a-b).abs <= d && (c-b).abs <= d) ? "Yes" : "No"