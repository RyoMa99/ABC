K = gets.to_i
sum = 0

1.upto(K) do |i|
  1.upto(K) do |j|
    1.upto(K) do |l|
       sum += i.gcd(j).gcd(l)
    end
  end
end

puts sum