# TLE-
n = gets.to_i
a = gets.chomp.split.map(&:to_i)

ans = 0
(n).times do |l|
  x = a[l]
  l.upto(n-1) do |r|
    x = [x,a[r]].min
    ans = [ans, (r-l+1) * x].max
  end
end
puts ans