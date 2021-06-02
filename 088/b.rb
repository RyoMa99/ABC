n = gets.to_i

ans = 0
gets.chomp.split.map(&:to_i).sort.reverse.each_with_index do |n,index|
  if index % 2 == 0
    ans += n
  else
    ans -= n
  end
end

puts ans