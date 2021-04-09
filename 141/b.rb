ans = "Yes"

gets.chomp.split("").each_with_index do |el,i|
  next if i % 2 == 0 && ["R","U","D"].include?(el)
  next if i % 2 == 1 && ["L","U","D"].include?(el)
  ans = "No"
  break
end

puts ans