class Unionfind:
  parent = []
  deep = []
  size = []

  def __init__(self,n):
    self.parent = [i for i in range(n)]
    self.deep = [0 for _ in range(n)]
    self.size = [1 for _ in range(n)]

  def find(self,x):
    if self.parent[x] == x:
      return x
    else:
      return self.find(self.parent[x])

  def getSize(self,x):
    return self.size[self.find(x)]

  # x,yの集合を併合する
  def unite(self,x,y):
    x = self.find(x)
    y = self.find(y)
    # 根が同じなので同じ集合にあることになる
    if x == y:
      return
    
    # 上記のfindにより根同士の併合になるので、深さが深くなるのをある程度効率化できる
    if self.deep[x] < self.deep[y]:
      self.parent[x] = y
      self.size[y] += self.size[x]
    else:
      self.parent[y] = x
      self.size[x] += self.size[y]
      if self.deep[x] == self.deep[y]:
        self.deep[x]+=1

def main():
  n = int(input())
  edges = []
  for _ in range(n-1):
    u,v,w = list(map(int,input().split()))
    u-=1
    v-=1
    edges.append((w,u,v))
  # wの重みが小さい順に見ていく事で、最短パスの最大値を都度確認しなくて済む。
  edges.sort()

  uf = Unionfind(n)
  ans = 0
  for [w,u,v] in edges:
    ans += w * uf.getSize(u) * uf.getSize(v)
    # print(f'{w} {uf.getSize(u)} {uf.getSize(v)}')
    uf.unite(u,v)
  print(ans)

if __name__ == '__main__':
  main()