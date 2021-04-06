canAnswer = [*1..9]
A,B = gets.split.map(&:to_i)

puts canAnswer.include?(A) && canAnswer.include?(B) ? A*B : -1