a,b = gets.split.map(&:hex)

case a <=> b
when 1 then puts ">"
when 0 then puts "="
when -1 then puts "<"
end