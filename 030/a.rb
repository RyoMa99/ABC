a,b,c,d = gets.split.map(&:to_i)

case Rational(b,a) <=> Rational(d,c)
when 1 then puts "TAKAHASHI"
when 0 then  puts "DRAW"
else puts "AOKI"
end