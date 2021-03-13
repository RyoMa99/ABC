N = gets.to_i

plane = []
N.times do
  plane.push gets.chomp.split.map(&:to_i)
end

ans = "No"
[*0...N].combination(3).to_a.each do |t_a,t_b,t_c|
  a_x,a_y = plane[t_a]
  b_x,b_y = plane[t_b]
  c_x,c_y = plane[t_c]
  
  if (b_y - a_y) * (c_x - a_x) == (c_y - a_y) * (b_x - a_x)
    ans = "Yes"
    break
  end
end

puts ans
