N = gets.to_i

subs = Array.new(N,0)

gets.split.map(&:to_i).each do |i|
  subs[i-1] += 1
end

puts subs