ans = []
x = list(input())
n = int(input())
s = set()
for _ in range(n):
  s.add(input())


def compare(check_index,names:set):
  # 指定の文字列ベースで該当する文字が存在するか走査する
  # namesは該当する文字が存在する文字列
  for i in range(26):
    if len(names) == 0:
      return
    # namesが1になった時、順番が分かっていない文字列の中でその文字列が一番辞書順で若いことが決定する。
    if len(names) == 1:
      ans.append(names.pop())
      return
    # check_indexはその時調べる文字列の要素番号になるが、その要素番号の文字がないときそれが一番若い文字列になる
    # 例)
    # a
    # ab
    # 上記2つの文字列で要素番号1を調べる時、aには該当の要素番号は存在しない為、aが最も若い文字列になる
    shortest_names = set([name for name in list(names) if len(name) == check_index ])
    if len(shortest_names) != 0:
      names -= shortest_names
      ans.append(shortest_names.pop())
    # n文字目が同じ文字列はn文字目まででは同じ順番になるので、その次の要素を見る
    same_word_names = set([name for name in list(names) if name[check_index] == x[i] ])
    if len(same_word_names) != 0:
      names -= same_word_names
      compare(check_index+1,same_word_names)

# 最初は全文字列を与える
compare(0,s)
for a in ans:
  print(a)
