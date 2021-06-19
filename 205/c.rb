a,b,c = gets.split.map(&:to_i)

if c % 2 != 0
  case a <=> b
  when -1 then puts "<"
  when 0 then puts "="
  when 1 then puts ">"
  end
else
  case a.abs <=> b.abs
  when -1 then puts "<"
  when 0 then puts "="
  when 1 then puts ">"
  end
end