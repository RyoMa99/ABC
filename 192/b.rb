S = gets.chomp

ans = "Yes"
S.length.times do |i|
  if i % 2 != 0
    unless S[i].eql? S[i].upcase
      ans = "No"
      break
    end
  else
    unless S[i].eql? S[i].downcase
      ans = "No"
      break
    end
  end
end

puts ans