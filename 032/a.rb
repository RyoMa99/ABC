a = gets.to_i
b = gets.to_i
n = gets.to_i

lcm = a*b / a.gcd(b)

i = 1
while true
  if lcm * i >= n 
    puts lcm * i
    exit
  end
  i+=1
end