s = gets.chomp.split("").sort
t = gets.chomp.split("").sort.reverse

len = s.length > t.length ? t.length : s.length

len.times do |i| 
  case s[i] <=> t[i]
  when -1
    puts "Yes"
    exit
  when 0
    next
  when 1
    puts "No"
    exit
  end
end

puts s.length < t.length ? "Yes" : "No"