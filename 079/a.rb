n = gets.chomp.split("")

2.times do |i|
  if n[i] == n[i+1] && n[i] == n[i+2]
    puts "Yes"
    exit
  end
end

puts "No"