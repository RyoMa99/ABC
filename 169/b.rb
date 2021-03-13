N = gets.to_i
A = gets.chomp.split.map(&:to_i)

if A.include?(0)
  puts 0
  exit
end

ans = 1
A.each do |a|
  ans *= a
  if ans > (10 ** 18)
    ans = -1
    break
  end
end

puts ans