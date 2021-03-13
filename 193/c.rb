require 'set'
N = gets.to_i
ans = Set.new

2.upto(Math.sqrt(N).to_i) do |i|
  2.upto(10**9) do |j|
    num = i**j
    break if num > N
    ans.add(num)
  end
end

pp N - ans.length