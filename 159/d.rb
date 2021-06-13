n = gets.to_i

num_array = gets.split.map(&:to_i)

nums = {}
num_array.each do |num|
  if nums.key?(num)
    nums[num] += 1
  else
    nums[num] = 1
  end
end

total = 0
lost_counts = {}
nums.each do |key,value|
  total += value * (value-1) / 2
  lost_counts[key] = value * (value-1) / 2 - (value-1) * (value-2) / 2
end

num_array.each do |num|
  puts total - lost_counts[num]
end