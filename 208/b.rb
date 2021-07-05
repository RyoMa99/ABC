m = gets.to_i

coins = [3628800,362880,40320,5040,720,120,24,6,2,1]
counts = 0


10.times do |i|
  if m / coins[i] > 100
    counts += 100
    m -= coins[i] * 100
  else
    counts += m / coins[i]
    m %= coins[i]
  end
end

puts counts