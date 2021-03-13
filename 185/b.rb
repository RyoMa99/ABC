N,M,T = gets.chomp.split.map(&:to_i)

battery = N 
before_time = 0
ans = "Yes"

M.times do 
  a, b = gets.chomp.split.map(&:to_i)
  battery -= a - before_time
  if (battery <= 0)
    ans = "No"
    break
  end

  # if(battery + b - a <= N)
  #   battery += b - a
  # elsif(battery < N)
  #   battery = N
  # end
  # 条件分岐の中で同じ変数に値を代入する処理を書くときはmin,maxで省略できるかも？
  battery = [battery + b - a,N].min

  before_time = b
end

if(battery > 0)
  battery -= T - before_time
  if (battery <= 0)
    ans = "No"
  end
end

puts ans