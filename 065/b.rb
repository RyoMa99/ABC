a = []

n = gets.to_i

n.times do
  a << gets.to_i
end

on = a[0]
if on == 2 
  puts 1
  exit
end


n.times do |i|
  if a[on-1] == 2 
    puts i+2
    exit
  end
  on = a[on-1]
end

puts -1