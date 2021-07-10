n,q = gets.split.map(&:to_i)


$roads = Array.new(n+1){ Array.new }
$town_color = Array.new(n+1,"")


(n-1).times do
  a,b = gets.split.map(&:to_i)
  $roads[a] << b
  $roads[b] << a
end

def dfs(current_town)
  $roads[current_town].each do |next_town|
    next unless $town_color[next_town].empty?
    $town_color[next_town] = $town_color[current_town].eql?("b") ? "r" : "b"
    dfs(next_town)
  end
end

$town_color[1] = "b"
dfs(1)

ans = []
q.times do
  c,d = gets.split.map(&:to_i)
  ans << ($town_color[c].eql?($town_color[d]) ? "Town" : "Road")
end

puts ans