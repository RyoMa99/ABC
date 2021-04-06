N = gets.to_i
S = gets.chomp

puts S.length % 2 == 0 && S.slice(0,N/2).eql?(S.slice(N/2,N/2)) ? "Yes" : "No"