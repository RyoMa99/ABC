n,m = gets.split.map(&:to_i)

a = n.times.map {gets.chomp.chars}
b = m.times.map {gets.chomp.chars}

is_match = false
(n-m+1).times do |y|
  (n-m+1).times do |x|
    is_match = false

    m.times do |dy|
      m.times do |dx|
        if a[y+dy][x+dx].eql?(b[dy][dx])
          is_match = true
        else
          is_match = false
        end 
        break unless is_match
      end
      break unless is_match
    end

    break if is_match
  end
  break if is_match
end

puts is_match ? "Yes" : "No"