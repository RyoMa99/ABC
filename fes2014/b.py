s = list(map(int,list(input())))

ans = 0
for i in range(len(s)):
  if i % 2 == 0:
    ans += s[i]
  else:
    ans -= s[i]

print(ans)