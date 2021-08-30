x,y = list(map(int,input().split(".")))
if 0 <= y and y <= 2:
  print(f'{x}-')
elif y <= 6:
  print(x)
else:
  print(f'{x}+')