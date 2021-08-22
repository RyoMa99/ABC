require "set"

s,k = gets.chomp.split
s = s.chars
k = k.to_i - 1

puts s.permutation(s.length).to_set.to_a.sort[k].join