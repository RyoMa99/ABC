n = gets.to_i

101.times do |i|
  101.times do |j|
    if 4*i + 7*j == n
      puts "Yes"
      exit
    end
  end
end
puts "No"