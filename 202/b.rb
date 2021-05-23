s = gets.chomp.reverse
a = s.split("").map do |el|
  case el
  when "6" then "9"
  when "9" then "6"
  else
    el
  end
end

puts a.join