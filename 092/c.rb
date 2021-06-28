n = gets.to_i
a =gets.chomp.split.map(&:to_i)
a.unshift 0
a.push 0


sum = 0
0.upto(n) do |i|
  sum += (a[i] - a[i+1]).abs
end

1.upto(n) do |i|
  puts sum - (a[i-1] - a[i]).abs - (a[i] - a[i+1]).abs + (a[i-1] - a[i+1]).abs
end