def fuct(num)
  return 1 if num == 1
  return num * fuct(num-1)
end

puts fuct(gets.to_i)