s = gets.chomp

s += s[-1].eql?("s") ? "es" : "s"

puts s