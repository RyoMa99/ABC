n = gets.to_i
a = gets.chomp.chars

count = 0
shouldExchange = -1
while !a.empty?
  case shouldExchange
  when -1
    shouldExchange = 0 if a.shift.eql?("W")
  when 0
    shouldExchange = 1 if a.pop.eql?("R")
  end

  if shouldExchange == 1
    count += 1
    shouldExchange = -1
  end
end

puts count