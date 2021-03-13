N,M = gets.split.map(&:to_i)
H = gets.chomp.split.map(&:to_i)

connects = Array.new(N){ Array.new([])}
M.times do 
  a,b = gets.split.map(&:to_i)
  connects[a-1] << b
  connects[b-1] << a
end

ans = 0
connects.length.times do |i|
  isNice = true
  connects[i].each do |el|
    isNice = false if H[el-1] >= H[i] 
  end
  ans += 1 if isNice
end

puts ans