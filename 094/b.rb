n,m,x = gets.split.map(&:to_i)

a = Array.new(n,0)

gets.chomp.split.map(&:to_i).map do |num|
  a[num-1] += 1
end

puts [a[0...x-1].sum, a[x..-1].sum].min