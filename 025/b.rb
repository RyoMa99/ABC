n,a,b = gets.split.map(&:to_i)

position = 0

n.times do
  s,d = gets.split
  d = d.to_i

  move = if d < a 
    a
  elsif d < b
    d
  else
    b
  end

  case s
  when "East"
    position += move
  when "West"
    position -= move
  end
end

if position == 0
  puts 0
  exit
end

direction = position > 0 ? "East" : "West"

puts "#{direction} #{position.abs}"