require "set"

N = gets.to_i

items = Set.new
N.times do
  items.add gets.chomp
end

puts items.length