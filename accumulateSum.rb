N = 10

array = [*1..N]
sum_array = []
sum_array[0] = 0

1.upto(N) do |i|
  sum_array[i] = sum_array[i-1] + array[i-1]
end

# 先頭からある部分までの総和リスト
# 先頭に何も足さないを入れる
pp sum_array

# 5 ~ 7 個目までの和
pp sum_array[7] -sum_array[4]