gets.to_i.downto(1) do |i|
  sq = Math.sqrt(i)
  next unless sq == sq.to_i
  puts i
  exit
end