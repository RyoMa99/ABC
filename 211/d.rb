n,m = gets.split.map(&:to_i)
roads = Array.new(n){Array.new}
m.times do
  a,b = gets.split.map(&:to_i)
  roads[a-1] << b - 1
  roads[b-1] << a - 1
end

# bfs
# 探索対象
que = [0]
# ツリーの階層
visited = Array.new(n,-1)
visited[0] = 0
# 街に最短経路でいける経路数
cnt = Array.new(n,0)
cnt[0] = 1

que.each do |i|
  roads[i].each do |j|
    if visited[j] == -1
      # まだ訪れてない町
      visited[j] = visited[i] + 1
      cnt[j] = cnt[i]
      que.push(j) if visited[n-1] == -1
    elsif visited[j] == visited[i] + 1
      # 訪れてはいるが、同じツリーの深さの街から訪れている場合
      cnt[j] = (cnt[j] + cnt[i]) % (10**9+7)
    end
  end
end

puts cnt[n-1] 