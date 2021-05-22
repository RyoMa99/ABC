array = [*1..gets.to_i]

array.map! do |i|
  count = 0
  while i % 2 == 0 do
    count += 1
    i /= 2
  end
  count
end

puts array.rindex(array.max)+1
