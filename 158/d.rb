s = gets.chomp.chars

isRev = false
gets.to_i.times do
  t,f,c = gets.split
  t = t.to_i
  f = f.to_i
  case t
  when 1
    isRev = !isRev
  when 2
    case f
    when 1
      !isRev ? s.unshift(c) : s.push(c)
    when 2
      !isRev ? s.push(c) : s.unshift(c)
    end
  end
end

puts !isRev ? s.join : s.join.reverse