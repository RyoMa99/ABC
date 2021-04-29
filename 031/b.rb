l,h = gets.split.map(&:to_i)

gets.to_i.times do 
  a = gets.to_i
  if a > h
    puts -1
  elsif a >= l 
    puts 0
  else 
    puts l - a
  end
end