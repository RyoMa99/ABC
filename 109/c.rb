n,x = gets.split.map(&:to_i)

a = []
a << x 

a << gets.chomp.split.map(&:to_i)
a.flatten!.sort!


ans = 0
n.times do |i|
  ans = ans.gcd(a[i+1]-a[i])
end

puts ans