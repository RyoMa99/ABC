# WA TLEあり
require 'set'
n = gets.to_i
a = gets.chomp.split.map(&:to_i)

duplicate = {}
ans = 0

(n/2).times do |i|
  next if a[i] == a[-(i+1)]

  if !duplicate.key?(a[i])
    duplicate[a[i]] = Set.new([a[-(i+1)]])
  else
    duplicate[a[i]].add a[-(i+1)]
  end

  if !duplicate.key?(a[-(i+1)])
    duplicate[a[-(i+1)]] = Set.new([a[i]])
  else
    duplicate[a[-(i+1)]].add a[i]
  end
end

duplicate = duplicate.sort_by {|_,value| value.length}.reverse.to_h

while !duplicate.empty?
  target = duplicate.shift[1]
  target.each do |v|
    duplicate.delete(v)
  end
  ans += target.length
end

puts ans