require "set"

ans = Set.new

s = gets.chomp
k = gets.to_i

(s.length-k+1).times do |i|
  ans.add s[i...(i+k)]
end

puts ans.length