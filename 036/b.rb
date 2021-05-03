n = gets.to_i

mass = Array.new(n){Array.new(n,"")}

n.times do |i|
  line = gets.chomp.split("")
  line.length.times do |j|
    mass[j][n-i-1] = line[j]
  end
end

mass.each do |line|
  puts line.join
end