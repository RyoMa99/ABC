s = gets.to_i

num = [s]
2.upto(1000000) do |i|
  if s % 2 == 0
    s /= 2
  else
    s = s * 3 + 1
  end

  if num.include?(s)
    puts i
    exit
  end

  num << s
end