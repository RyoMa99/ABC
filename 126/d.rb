n = gets.to_i
$length = {}
$node = Array.new(n){Array.new}
$color = Array.new(n,-1)

(n-1).times do 
  u,v,w = gets.split.map(&:to_i)
  u -= 1
  v -= 1

  $node[u] << v
  $node[v] << u
  $length["#{[u,v].min}_#{[u,v].max}"] = w
end

def dfs(current_node)
  $node[current_node].each do |next_node|
    next if $color[next_node] != -1
    min = [current_node,next_node].min
    max = [current_node,next_node].max
    if $length["#{min}_#{max}"] % 2 == 0
      $color[next_node] = $color[current_node]
    else
      $color[next_node] = $color[current_node] == 0 ? 1 : 0
    end
    dfs(next_node)
  end
end

$color[0] = 0
dfs(0)

puts $color