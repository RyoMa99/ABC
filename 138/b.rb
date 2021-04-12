N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0
A.each do |num|
  ans += Rational(1,num)
end

puts Rational(1,ans).to_f