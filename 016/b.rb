ans = ["!","+","-","?"]

a,b,c = gets.split.map(&:to_i)

i = 0

i += 1 if a+b == c
i += 2 if a-b == c

puts ans[i]