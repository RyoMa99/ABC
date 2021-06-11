ans = gets.chomp.chars.map do |num|
  case num
  when "1" then "9"
  when "9" then "1"
  else num
  end
end

puts ans.join