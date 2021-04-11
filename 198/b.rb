N = gets.chomp

ans = "No"
10.times do |i|
  n = "#{"0"*i}#{N}"
  ans = "Yes" if n.eql?(n.reverse)
end
puts ans