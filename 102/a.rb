
def gcd (a,b)
  return a if b == 0
  return gcd(b,a%b)
end

def lcd(a,b)
  return a*b / gcd(a,b)
end

n = gets.to_i

puts lcd(n,2)