n = gets.to_i
ans = 0

gets.chomp.split.map(&:to_i).each do |num|
  while num % 2 == 0
    ans += 1
    num /= 2
  end
end

puts ans