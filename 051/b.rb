k,s = gets.split.map(&:to_i)

count = 0

(k+1).times do |x|
  (k+1).times do |y|
    count += 1 if x + y <= s && s - (x + y) <= k
  end
end

puts count