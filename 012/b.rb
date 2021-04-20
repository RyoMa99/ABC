n = gets.to_i

h = n / 3600
m = n % 3600 / 60
s = n % 3600 % 60

puts sprintf("%02d:%02d:%02d",h,m,s)