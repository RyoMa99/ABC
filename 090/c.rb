n,m = gets.split.map(&:to_i)

if n == 1 && m == 1
  puts 1
  exit
end

if n == 1 
  puts m-2
  exit
end

if m == 1
  puts n-2
  exit
end

# これいらなかった。下の計算式に吸収できる
if n == 2 || m == 2
  puts 0
  exit
end

puts (n-2) * (m-2)