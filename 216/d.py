from collections import deque

n,m = 0,0
a = []
available = []

que = deque()
def setAvailable(ai):
  if not a[ai]:
    return
  front = a[ai][0]
  if 0 <= available[front]:
    que.append((available[front],ai))
    available[front] = -1
  else:
    available[front] = ai

def main():
  # 初期化処理
  n,m = list(map(int,input().split()))
  for i in range(m):
    k = int(input())
    a.append(deque(list(map(lambda x: x-1 ,map(int,input().split())))))
  for _ in range(n):
    available.append(-1)

  # 各筒の先頭をチェック
  for i in range(m):
    setAvailable(i)

  # queが空になるまで続ける
  while que:
    i1,i2 = que.popleft()
    
    a[i1].popleft()
    setAvailable(i1)
    a[i2].popleft()
    setAvailable(i2)
  
  # queが空になった時全ての筒が空ならok
  ok = True
  for i in range(m):
    if a[i]:
      ok = False
      break

  if ok:
    print("Yes")
  else:
    print("No")


if __name__ == '__main__':
  main()