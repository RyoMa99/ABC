n = gets.to_i - 1
alpha = [*"a".."z"]

ans = []

ans.unshift alpha[n%26]
n /= 26

while n != 0
  n -= 1
  ans.unshift alpha[(n%26)]
  n /= 26
end

puts ans.join