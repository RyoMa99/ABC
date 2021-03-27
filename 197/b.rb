H,W,X,Y = gets.split.map(&:to_i)
S = Array.new(H){Array.new([])}

H.times do |i|
  S[i] = gets.chomp
end

x = X - 1
y = Y - 1

cnt = 0

# その場
cnt += 1 if S[x][y].eql?(".")

#左
(y-1).downto(0) do |i|
  break if S[x][i].eql?("#")
  cnt += 1
end

#右
(y+1).upto(W-1) do |i|
  break if S[x][i].eql?("#")
  cnt += 1
end

#上
(x-1).downto(0) do |i|
  break if S[i][y].eql?("#")
  cnt += 1
end

#下
(x+1).upto(H-1) do |i|
  break if S[i][y].eql?("#")
  cnt += 1
end

puts cnt