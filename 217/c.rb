n = gets.to_i
P = gets.chomp.split.map(&:to_i)

Q = Array.new(n,-1)

P.each_with_index do |num,index|
  Q[num-1] = index+1 
end

puts Q.join(" ")