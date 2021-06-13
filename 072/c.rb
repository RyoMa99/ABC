n = gets.to_i

nums = {}

gets.split.map(&:to_i).each do |num|
  [-1,0,1].each do |i|
    if nums.key?(num+i)
      nums[num+i]+=1
    else
      nums[num+i] = 1
    end
  end
end

p nums.max_by{|key,value| value}[1]