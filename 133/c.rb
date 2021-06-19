l,r = gets.split.map(&:to_i)

min = 2019
l.upto(l+2018) do |i|
  break if i == r

  (i+1).upto([l+2018,r].min) do |j|
    remain = (i*j) % 2019
    min = [min,remain].min
  end
end

puts min