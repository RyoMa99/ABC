ans = 0
cnt = 0
gets.chomp.split("").map.each{ |f|
  if f == "R"
    cnt += 1 
  else
    cnt = 0
  end

  ans = cnt if ans < cnt
}

puts ans