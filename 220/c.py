n = int(input())
a = list(map(int,input().split()))
x = int(input())
a_sum = sum(a)
k = x // a_sum * len(a)
x %= a_sum

i = 0
while x >= 0:
  x -= a[i]
  k+=1
  i+=1

print(k)
