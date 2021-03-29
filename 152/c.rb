N = gets.to_i
P = gets.chomp.split.map(&:to_i)

cnt = 0
min = P[0]

N.times do |i|
  if min >= P[i]
    cnt += 1
    min = P[i]
  end
end

puts cnt