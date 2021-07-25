R,G,B,N = gets.split.map(&:to_i)

cnt = 0
0.upto(3000) do |r|
  0.upto(3000) do |g|
    rest = N - (R*r+G*g)
    cnt += 1 if rest >= 0 && rest % B == 0
  end
end

puts cnt