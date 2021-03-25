N = gets.to_i
A = gets.chomp.split.map(&:to_i)

cnt = []
0.upto(400) do |i|
  cnt[i] = A.count(i-200)
end

sum = 0
0.upto(400) do |i|
  (i+1).upto(400) do |j|
    sum += (i - j) ** 2 * cnt[i] * cnt[j]
  end
end

puts sum