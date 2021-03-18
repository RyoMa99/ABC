def rev s
  s.eql? s.split("").reverse.join
end

S = gets.chomp

ans = "No"
ans = "Yes" if rev(S) && rev(S.slice(0..(S.length-1)/2-1)) && rev(S.slice((S.length+3)/2-1..-1))

puts ans