n = gets.to_i
s = gets.chomp
isRev = false

gets.to_i.times do
  t,a,b = gets.split.map(&:to_i)
  case t 
  when 1
    if isRev
      if a > n
        a = a-n
      else
        a = a+n
      end
      if b > n
        b = b-n
      else
        b = b+n
      end
    end
    tmp = s[b-1]
    s[b-1] = s[a-1]
    s[a-1] = tmp
  when 2
    isRev = !isRev
  end
end

if isRev
  s = s[n..-1] << s[0...n]
end

puts s