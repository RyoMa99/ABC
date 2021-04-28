a = 0
b = 0
c = 0
d = 0
e = 0
f = 0

gets.chomp.split("").each do |el|
  eval("#{el.downcase} += 1")
end

puts "#{a} #{b} #{c} #{d} #{e} #{f}"