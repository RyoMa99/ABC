require("set")

N = gets.to_i

ans = Set.new
1.upto(Math.sqrt(N)) do |i|
  if N % i == 0
    ans.add i
    ans.add N / i
  end
end

ans.sort.each{|i| p i}