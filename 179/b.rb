N = gets.to_i

count = 0
N.times do
  d_1,d_2 = gets.split.map(&:to_i)
  if d_1 == d_2
    count += 1 
  else
    count = 0
  end

  break if count >= 3
end

puts count >= 3 ? "Yes" : "No"

