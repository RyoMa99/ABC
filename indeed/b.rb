s = gets.chomp
t = gets.chomp

s.length.times do |i|
  if s.eql?(t)
    puts i
    exit
  end
  s = "#{s[-1]}#{s[0...-1]}"
end

puts -1