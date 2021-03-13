N = gets.chomp.to_i

arr = []

N.times do |i|
  arr[i] = gets.chomp.split.map(&:to_f)
end

count = 0
(0..N-2).each do |i|
  (i+1..N-1).each do |j|
    a = (arr[i][1] - arr[j][1]) / (arr[i][0] - arr[j][0])
    count += 1 if -1 <= a && a <= 1
  end
end

puts count