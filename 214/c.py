def main():
  n = int(input())
  s = list(map(int,input().split()))
  t = list(map(int,input().split()))
  ans = [10**9 for _ in range(n)]
  g_t = min(t)
  start = t.index(g_t)
  ans[start] = g_t

  for i in range(start+1,n):
    ans[i] = min([ans[i-1]+s[i-1],t[i]])

  if start != 0:
    ans[0] = min([ans[n-1]+s[n-1],t[0]])
    for i in range(1,start):
      ans[i] = min([ans[i-1]+s[i-1],t[i]])

  for num in ans:
    print(num)

if __name__ == '__main__':
  main()