verticals = Array.new(3){Array.new}
sides = Array.new(3){Array.new}
diagnals = Array.new(2){Array.new}

3.times do |i|
  side = gets.chomp.split.map(&:to_i)

  sides[i] = side

  diagnals[0] << side[i]
  diagnals[1] << side[2-i]

  side.each_with_index do |num,index|
    verticals[index] << num
  end
end

nums = []
gets.to_i.times do
  nums << gets.to_i
end

ans = "No"
verticals.each do |vertical|
  ans = "Yes" if (vertical - nums).empty?
end

sides.each do |side|
  ans = "Yes" if (side - nums).empty?
end

diagnals.each do |diagnal|
  ans = "Yes" if (diagnal - nums).empty?
end

puts ans