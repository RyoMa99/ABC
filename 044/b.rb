gets.chomp.split("").group_by(&:itself).transform_values(&:count).each do |key,value|
  if value % 2 != 0
    puts "No"
    exit
  end
end

puts "Yes"