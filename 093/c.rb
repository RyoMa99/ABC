num = gets.chomp.split.map(&:to_i).sort

diff = num[-1] - num[0] + num[-1] - num[1]

if diff % 2 == 0
  puts diff / 2
else
  puts diff / 2 + 2
end