n = gets.to_i
$towns = Array.new(n+1){[]}
$visited = Array.new(n+1,false)
$ans = []

(n-1).times do
  a,b = gets.split.map(&:to_i)
  $towns[a] << b
  $towns[b] << a
end

n.times do |i|
  $towns[i].sort!
end

def dfs(n)
  $ans << n
  $towns[n].each do |num|
    next if $visited[num]
    $visited[num] = true
    dfs(num)
    $ans << n
  end
end

$visited[1] = true
dfs(1)

puts $ans.join(" ")