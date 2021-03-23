N = gets.to_i
x = gets.chomp.split.map(&:to_i)

ans = 10000000000
x.min.upto(x.max) do |i|
  fitness = x.inject(0){|result,item| result + (item - i) ** 2 }
  ans = fitness if ans > fitness
end

puts ans