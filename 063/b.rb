s = gets.chomp.split("")

puts s.length == s.uniq.length ? "yes" : "no"