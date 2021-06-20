n = gets.to_i

1.upto(10**9) do |i|
  next if ((1+i) * i) / 2 < n
  puts i
  exit
end