h,w,n = gets.split.map(&:to_i)

ans = {}
n.times do |i|
  a,b = gets.split.map(&:to_i)
  ans[i+1] = {a=>b}
end

# p ans

ans = ans.sort_by{ |_,v| v.keys[0] }
tmp = 0
num = 0
n.times do |i|
  if ans[i][1].keys[0] != tmp
    tmp = ans[i][1].keys[0]
    num += 1
    ans[i][1] = {num => ans[i][1].values[0]}
  else
    ans[i][1] = {num => ans[i][1].values[0]}
  end
end

# p ans

ans = ans.sort_by{ |_,v| v.values[0] }
tmp = 0
num = 0
n.times do |i|
  if ans[i][1].values[0] != tmp
    tmp = ans[i][1].values[0]
    num += 1
    ans[i][1] = { ans[i][1].keys[0] =>num }
  else
    ans[i][1] = { ans[i][1].keys[0] =>num }
  end
end

# p ans

ans = ans.sort_by{ |k,_| k }

# p ans

ans.each do |_,h|
  puts "#{h.keys[0]} #{h.values[0]}"
end