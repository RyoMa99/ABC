students = {}
n = gets.to_i

gets.split.map(&:to_i).each_with_index do |el,i|
  students[i] = el
end

students.sort_by{|_,v| -v}.to_h.each_key{|k| puts k+1}