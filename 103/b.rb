s = gets.chomp.chars
t = gets.chomp.chars

s.length.times do
  tmp = s.shift
  s.push tmp
  if s == t
    puts "Yes"
    exit
  end
end

puts "No"