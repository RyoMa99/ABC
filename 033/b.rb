n = gets.to_i
cities = {}

sum = 0
max = 0
max_city = ""

n.times do
  city, num = gets.split
  sum += num.to_i
  if max <= num.to_i 
    max = num.to_i
    max_city = city
  end
end

puts max * 2 > sum ? max_city : "atcoder"