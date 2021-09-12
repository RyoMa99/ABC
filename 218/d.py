import math

# 初期化処理
n = int(input())
points = []
for _ in range(n):
  points.append(tuple(map(int,input().split())))
points.sort()

def tupleBinarySearch(x,y) -> bool:
  start = 0
  end = n-1
  for _ in range(15):
    m = math.floor((start+end)/2)
    if points[m][0] > x:
      end = m
      continue
    if points[m][0] < x:
      start = m
      continue
    if points[m][1] > y:
      end = m
      continue
    if points[m][1] < y:
      start = m
      continue
    # print(f's:{start} e:{end}')
    return True
  if points[start][0] == x and points[start][1] == y:
    # print(f's:{start} e:{end}')
    return True

  return False

def main():
  cnt = 0
  for i in range(n-1):
    for j in range(i,n):
      ld_X,ld_y = points[i]
      rt_x,rt_y = points[j]
      if ld_X >= rt_x or ld_y >= rt_y:
        continue
      # print(f'i:{i} j:{j}')
      if tupleBinarySearch(ld_X,rt_y) and tupleBinarySearch(rt_x,ld_y):
        # print("path")
        cnt += 1

  print(cnt)

if __name__ == "__main__":
  main()