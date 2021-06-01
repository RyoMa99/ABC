a,b = gets.split.map(&:to_i)
s = gets.chomp.split("-").map(&:length)

puts s[0] == a && s[1] == b ? "Yes" : "No"