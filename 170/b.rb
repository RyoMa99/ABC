X,Y = gets.split.map(&:to_i)

ans = "No"
0.upto(X) do |i|
  if Y == ( 2 * i + 4 * (X-i) )
    ans = "Yes"
    break
  end
end

puts ans