n = gets.to_i
prefix = {
  M: 0,
  A: 0,
  R: 0,
  C: 0,
  H: 0,
}

n.times do
  s = gets[0].to_sym
  prefix[s]+=1 if prefix.key?(s)
end

sum = 0
sum += prefix[:M] * prefix[:A] * prefix[:R]
sum += prefix[:M] * prefix[:A] * prefix[:C]
sum += prefix[:M] * prefix[:A] * prefix[:H]
sum += prefix[:M] * prefix[:R] * prefix[:C]
sum += prefix[:M] * prefix[:R] * prefix[:H]
sum += prefix[:M] * prefix[:C] * prefix[:H]
sum += prefix[:A] * prefix[:R] * prefix[:C]
sum += prefix[:A] * prefix[:R] * prefix[:H]
sum += prefix[:A] * prefix[:C] * prefix[:H]
sum += prefix[:R] * prefix[:C] * prefix[:H]
puts sum