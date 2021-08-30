n = int(input())

ans = ''
while n >= 1:
  if n % 2 == 1:
    ans = 'A' + ans
    n -= 1
  else:
    ans = 'B' + ans
# pythonはint同士の除算もfloatで返す
    n //= 2


print(ans)
