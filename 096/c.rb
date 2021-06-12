h,w = gets.chomp.split.map(&:to_i)

mass = []
h.times do
  mass << gets.chomp.chars
end

ans = "Yes"

h.times do |dh|
  w.times do |dw|
    next unless mass[dh][dw].eql?("#")
    # 上
    unless dh == 0
      next if mass[dh-1][dw].eql?("#")
    end
    # 下
    unless dh == h-1
      next if mass[dh+1][dw].eql?("#")
    end
    # 左
    unless dw == 0
      next false if mass[dh][dw-1].eql?("#")
    end
    # 右
    unless dw == w-1
      next if mass[dh][dw+1].eql?("#")
    end
    ans = "No"
  end
end

puts ans