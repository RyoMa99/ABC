board = []

4.times do |i|
  board << gets.chomp.split
end

4.times do |i|
  puts board[3-i].reverse.join(" ")
end
