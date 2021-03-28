N,K = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort.reverse

if K >= h.length
  puts 0
  exit
else
  h.slice!(0..(K-1)) if K != 0
  puts h.sum
end
