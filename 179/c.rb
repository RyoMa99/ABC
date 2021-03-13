N = gets.to_i

count = 0

1.upto(N-1) do |i|
  if N % i == 0
    count += N/i - 1
  else
    count += (N/i).to_i
  end
end

puts count