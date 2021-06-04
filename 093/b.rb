require "set"

a,b,k = gets.split.map(&:to_i)

ans = [*a...[(a+k),b].min]
ans << [*[a,(b-k+1)].max..(b)]

puts ans.flatten.uniq