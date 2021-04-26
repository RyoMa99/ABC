n,t = gets.split.map(&:to_i)
time = 0
before = gets.to_i
(n-1).times do
  a = gets.to_i
  if before + t <= a 
    time += t 
    before = a 
    next
  end

  time += a - before
  before = a
end

time += t

puts time