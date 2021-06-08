s = gets.chomp.chars.map(&:to_i)
k = gets.to_i

s.length.times do |i|
  if s[i] != 1
    puts s[i]
    exit
  end
  
  if i + 1 == k 
    puts 1
    exit
  end
end