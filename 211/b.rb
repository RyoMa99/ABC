require "set"

ans = Set.new

4.times{ ans.add(gets.chomp)}

puts ans.count == 4 ? "Yes" : "No"