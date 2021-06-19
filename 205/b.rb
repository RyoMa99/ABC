n = gets.to_i

a = gets.chomp.split.map(&:to_i).sort

ans = "Yes"
1.upto(n) do |i|
  ans = "No" unless i == a[i-1]
end

puts ans