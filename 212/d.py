import heapq

def main():
  Q = int(input())
  imos = 0
  bag = []
  ans = []
  for i in range(Q):
    q = list(map(int,input().split()))
    if q[0] == 1:
      heapq.heappush(bag,q[1]-imos)
    elif q[0] == 2:
      imos += q[1]
    else:
      ans.append(heapq.heappop(bag)+imos)

  for num in ans:
    print(num)

main()