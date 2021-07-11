# いくつかWAがある
n,q = gets.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a.unshift(0)
good_num_counts = []
good_num_counts << 0

1.upto(n) do |i|
  good_num_counts << good_num_counts[i-1] + (a[i] - a[i-1] - 1)
end

ans = []
q.times do
  num = gets.to_i
  if num > good_num_counts[-1]
    # good_num_counts[-1]より大きい時
    ans << a[-1] + (num - good_num_counts[-1])

  else
    # good_num_counts[-1]より小さい時
    # num以下の最大値で、連続する場合一番右にあるもの
    # 計算量を考慮して2分探索
    head = 0
    tail = n
    until (head+1) == tail
      check_point = (head+tail)/2
      if num > good_num_counts[check_point]
        head = check_point
      else
        tail = check_point
      end
    end
    ans << a[head] + (num - good_num_counts[head])
  end
end

puts ans