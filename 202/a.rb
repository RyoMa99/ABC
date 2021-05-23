rdice = [6,5,4,3,2,1]

a,b,c = gets.split.map(&:to_i)

puts rdice[a-1] + rdice[b-1] + rdice[c-1]