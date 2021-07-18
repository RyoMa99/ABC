n = gets.to_i
s = []
n.times { s << gets.to_i }
s.sort!
ans = s.sum

if ans % 10 != 0
  puts ans
  exit
end

n.times do |i|
  if (ans-s[i]) % 10 != 0
    puts ans - s[i]
    exit
  end
end

puts 0