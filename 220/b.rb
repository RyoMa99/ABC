k = gets.to_i
a,b = gets.chomp.split
a = a.chars.map(&:to_i).reverse
b = b.chars.map(&:to_i).reverse

a_d = 0
a.length.times do |i|
  a_d += k**i * a[i]
end

b_d = 0
b.length.times do |i|
  b_d += k**i * b[i]
end

puts a_d * b_d