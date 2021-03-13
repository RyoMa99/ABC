N,x = gets.split.map(&:to_i)

gets.chomp.split("").each do |ans|
  if ans.eql?("o")
    x += 1
  elsif x <= 0
    next
  else
    x -= 1
  end
end

puts x