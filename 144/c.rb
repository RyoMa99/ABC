N = gets.to_i

ans = []
(Math.sqrt(N).to_i).downto(1) do |i|
  if N % i == 0
    ans << (i - 1) + (N/i - 1)
  end
end

puts ans.min