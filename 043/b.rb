ans = ""
gets.chomp.split("").each do |el|
  case el
  when "0"
    ans = "#{ans}0" 
  when "1"
    ans = "#{ans}1" 
  when "B"
    ans = ans.chop
  end
end

puts ans
