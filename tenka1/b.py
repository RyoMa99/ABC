if __name__ == "__main__":
  n = int(input())
  max = 0
  num = -1
  for i in range(n):
    a,b = map(int,input().split())
    if a > max:
      max = a
      num = b
  print(max+num)