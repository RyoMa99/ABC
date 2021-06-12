ans = {}
gets.to_i.times do
  num = gets.to_i
  if ans.key? num
    ans[num] = !ans[num]
  else
    ans[num] = true
  end
end

puts ans.filter{|key,value| value}.count