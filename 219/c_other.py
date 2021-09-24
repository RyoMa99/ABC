x = list(input())
dic = {}
# 与えられた文字とそれが何番目に若いかの対応表
for i in range(26):
  dic[x[i]] = i

n = int(input())
names = []
for _ in range(n):
  name = []
  for c in list(input()):
    # 各文字が何番目に若いかの数字に置き換えて2次元配列として持つ。
    name.append(dic[c])
  names.append(name)

# ただの数列なので標準のsortが使える
names.sort()
# 数字と文字を置き換えなおす
ans = []
for name in names:
  ans.append("".join([x[c] for c in name]))

for a in ans:
  print(a)
