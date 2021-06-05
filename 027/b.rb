n = gets.to_i

islands = gets.chomp.split.map(&:to_i)

if islands.sum % n != 0
  puts -1
  exit
end

avg = islands.sum/n
bridge = 0
is_seeking = false
fin_place = -1

islands.length.times do |i|
  if islands[i] == avg && !is_seeking
    fin_place = i
    next
  end
  
  if islands[fin_place+1..i].sum.to_f/(i-fin_place) == avg
    fin_place = i
    is_seeking = false
    next
  end

  bridge += 1
  is_seeking = true
end

puts bridge