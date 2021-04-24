s = gets.chomp

gets.to_i.times do 
  l,r = gets.split.map(&:to_i)
  left = s[0...(l-1)]
  right = s[r..-1]
  middle = s[(l-1)...r].reverse

  s = "#{left}#{middle}#{right}"
end

puts s