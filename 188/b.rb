N = gets.chomp.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

sum = 0
N.times do |i|
  sum +=a[i] * b[i]
end

puts sum == 0 ? "Yes" : "No"