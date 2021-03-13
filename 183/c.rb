N,K = gets.split.map(&:to_i)

patterns = [*1...N].permutation.to_a

time_table = []
N.times do |i|
  time_table.push gets.chomp.split.map(&:to_i)
end

count = 0
patterns.each do |pattern|
  passed_time = 0
  start = 0
  pattern.each do |step|
    passed_time += time_table[start][step]
    start = step
  end
  passed_time += time_table[start][0]
  count+= 1 if passed_time == K
end

puts count