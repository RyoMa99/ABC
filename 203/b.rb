n,k = gets.split.map(&:to_i)

ans = 0
1.upto(n) do |i|
  1.upto(k) do |j|
    ans += i * 100 + j
  end
end

puts ans