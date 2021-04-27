n = gets.to_i

radius = []
n.times do
  radius << gets.to_i
end
radius.sort!.reverse!

ans = 0
n.times do |i|
  ans = if i % 2 == 0
    ans += radius[i] ** 2
  else
    ans -= radius[i] ** 2
  end
end

puts ans * Math::PI