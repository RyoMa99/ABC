N,S,D = gets.split.map(&:to_i)

ans = "No"
N.times do 
  x,y = gets.split.map(&:to_i)
  ans = "Yes" if x < S && y > D
end

puts ans