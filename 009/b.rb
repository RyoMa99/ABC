require "set"

menu = Set.new

gets.to_i.times do 
  menu.add(gets.to_i)
end

puts menu.sort{|a,b| b <=> a}.to_a[1]