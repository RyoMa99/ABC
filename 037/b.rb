n,q = gets.split.map(&:to_i)

arr = Array.new(n,0)

q.times do 
  l,r,t = gets.split.map(&:to_i)
  arr[l-1,r-l+1] = Array.new(r-l+1,t)
end

puts arr