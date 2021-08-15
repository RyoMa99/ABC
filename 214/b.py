def main():
  cnt = 0
  s,t = list(map(int,input().split()))
  for a in range(s+1):
    for b in range(s-a+1):
      for c in range(s-(a+b)+1):
        if a*b*c <= t:
          cnt+=1

  print(cnt)


if __name__ == '__main__':
  main()