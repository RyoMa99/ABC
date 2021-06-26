n = gets.to_i
ran = []

n.times do
  t,l,r = gets.split.map(&:to_i)
  ran << {start:l,fin:r,type:t}
end

ans = 0
(n-1).times do |i|
  (i+1).upto(n-1) do |j|
    if (ran[i][:start] <= ran[j][:start] && ran[j][:start] <= ran[i][:fin])
      unless ([2,4].include?(ran[i][:type]) || [3,4].include?(ran[j][:type])) && ran[j][:start] == ran[i][:fin]
        ans += 1
        next
      end
    end

    if (ran[i][:start] <= ran[j][:fin] && ran[j][:fin] <= ran[i][:fin])
      ans += 1 unless ([3,4].include?(ran[i][:type]) || [2,4].include?(ran[j][:type])) && ran[j][:fin] == ran[i][:start]
      next
    end
    
    if (ran[j][:start] < ran[i][:start] && ran[i][:fin] < ran[j][:fin])
      ans += 1
    end
    # puts "#{ran[i]} #{ran[j]}"
  end
end

puts ans
