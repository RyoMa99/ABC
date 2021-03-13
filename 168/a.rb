ans = ""
case gets.chomp[-1].to_i
when 2,4,5,7,9
  ans = "hon"
when 0,1,6,8
  ans = "pon"
when 3
  ans = "bon"
end
puts ans