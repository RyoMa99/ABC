N = gets.to_i

ans = case N
when 1 then 0
when 2 then 1
else N-1
end

puts ans