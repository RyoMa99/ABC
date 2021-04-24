s = gets.chomp.split("")
ans = ""

tmp = ""
cnt = 1
s.each do |char|
  if tmp.empty?
    tmp = char
    next
  end
  if tmp.eql? char
    cnt += 1
    next
  end
  ans << "#{tmp}#{cnt}"
  tmp = char
  cnt = 1
end
ans << "#{tmp}#{cnt}"

puts ans