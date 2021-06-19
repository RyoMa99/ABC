# いくつかWAがある
n,q = gets.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
good_num_counts = []
good_num_counts << a[0] - 1

1.upto(n-1) do |i|
  good_num_counts << good_num_counts[i-1] + (a[i] - a[i-1] - 1)
end

q.times do
  num = gets.to_i
  if num > good_num_counts[-1]
    # good_num_counts[-1]より大きい時
    puts a[-1] + (num - good_num_counts[-1])

  else
    # good_num_counts[-1]より小さい時
    # num以上の最小値を探す。同値可
    # 計算量を考慮して2分探索
    head = 0
    tail = n-1
    min_max = -1
    while true
      if num > good_num_counts[(head+tail)/2]
        head = (head+tail)/2
      else
        tail = (head+tail)/2
      end

      if head + 1 == tail
        if good_num_counts[head] == good_num_counts[tail] || num == good_num_counts[head]
          min_max = head
        else
          min_max = tail
        end
        break
      end
    end

    if min_max == -1
      puts "error"
      exit
    end

    puts (a[min_max]-1) - (good_num_counts[min_max] - num)

  end
end