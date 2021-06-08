n,m = gets.split.map(&:to_i)

# towns[i]からいける都市のリスト
# Rubyのグローバル変数は$を接頭辞にする
$towns = Array.new(n){[]}
m.times do
  a,b = gets.split.map(&:to_i)
  $towns[a-1] << b-1
end

# DFS
def dfs(v)
  # 一度訪れた都市は探索を終了させる
  return if $temp[v]
  $temp[v] = true
  # DFSの醍醐味
  # 再起関数を使って底まで見ていく
  # グラフなので無限ループに入る恐れがあるが、上記のreturnで途切れるので問題なし
  $towns[v].each{|vv| dfs(vv)} 
end

ans = 0
n.times do |i|
  # iから各都市に行けるかどうか真偽値の配列でカウントする
  $temp = Array.new(n,false)
  dfs(i)
  ans += $temp.select{|el| el}.count
end

puts ans