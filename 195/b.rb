A,B,W = gets.split.map(&:to_i)

min = 10000000
max = 0

1.upto(1000000) do |i|
  if A * i <= 1000 * W && 1000 * W <= B * i
    min = [i,min].min
    max = [i,max].max
  end
end

if min > max
  puts "UNSATISFIABLE"
else
  puts "#{min} #{max}"
end
