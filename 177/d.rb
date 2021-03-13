# Union Findが分からないと解けない？
# 集合の作りが甘い
require "set"
N,M = gets.split.map(&:to_i)

groups = []
M.times do |i|
  a,b = gets.split.map(&:to_i)
  isNew = true

  groups.each do |group| 
    if group.include?(a) || group.include?(b)
      group.add a
      group.add b
      isNew = false
    end
  end

  groups << Set.new([a,b]) if isNew
end
pp groups.map(&:size).max