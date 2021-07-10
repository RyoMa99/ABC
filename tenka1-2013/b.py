cnt = 0
for i in range(int(input())):
  s = sum(list(map(int,input().split(" "))))
  if (s >= 0 and s < 20):
    cnt+=1

print(cnt)
