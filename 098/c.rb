n = gets.to_i
m = gets.chomp

e_count = m.delete('W').length
w_count = 0
turn_counts = []
m = m.chars

n.times do |i|
  case m[i]
  when 'W'
    turn_counts << w_count + e_count
    w_count += 1
  when 'E'
    e_count -= 1
    turn_counts << w_count + e_count
  end
end

puts turn_counts.min