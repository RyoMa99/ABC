ans = "YES"

s = gets.chomp

i = 0
while i < s.length do
  if ["o","k","u"].include?(s[i])
    i += 1
    next
  end
  if s[i..(i+1)].eql?("ch")
    i += 2
    next
  end
  ans = "NO"
  break
end
puts ans