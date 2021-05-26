h,w = gets.split.map(&:to_i)

mass = []

h.times do
  mass << gets.chomp.split("")
end

count = Array.new(h){Array.new(w,0)}

mass.length.times do |i|
  mass[i].length.times do |j|
    if mass[i][j].eql?("#")
      count[i][j] = "#"
      next
    end

    [*-1..1].each do |dx|
      [*-1..1].each do |dy|
        next if j + dx < 0 || j + dx == mass[i].length
        next if i + dy < 0 || i + dy == mass.length
        next if dx == 0 && dy == 0

        count[i][j] += 1 if mass[i+dy][j+dx].eql?("#")
      end
    end
  end
end


count.each do |el|
  puts el.join
end