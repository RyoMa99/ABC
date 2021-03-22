N,M = gets.split.map(&:to_i)

ans = Array.new(N,0)

M.times do
  s,c = gets.split.map(&:to_i)
  # 違う数字が指定されたとき
  if ans[s-1] != 0 && ans[s-1] != c
    puts -1
    exit
  end
  # Nが1出ない時に、1桁目に0を指定されたとき
  if N != 1 && s == 1 && c == 0
    puts -1
    exit
  end

  ans[s-1] = c
end

# 2桁以上で1桁目が0の時は、1を足す
ans[0] = 1 if N != 1 && ans.first == 0

puts ans.join