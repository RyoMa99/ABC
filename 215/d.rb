def gcd(a,b)
  return a if b == 0
  return gcd(b,a%b)
end

def lcd(a,b)
  return a*b / gcd(a,b)
end

n,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

# a_lcdが10**9より大きくなる。gcdの計算量がlog n でも対応できない
# a = Array.new(10**5) {rand(1..10**5)}
a_lcd = a.inject(1){|result,item| lcd(result,item) }
# puts a_lcd

ans = []
1.upto(m) do |i|
  ans << i if gcd(a_lcd,i) == 1
end

puts ans.length
puts ans