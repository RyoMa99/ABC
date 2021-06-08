n = gets.to_i

ans = 0
gets.chomp.split.map(&:to_i).each do |num|
    ans += num - 10 if num > 10
end

puts ans