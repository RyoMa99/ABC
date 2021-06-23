n,t = gets.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

ans = 0
1.upto(n-1) do |i|
  ans += case a[i] - a[i-1] > t
  when true then t
  when false then a[i] - a[i-1]
  end
end

puts ans+t