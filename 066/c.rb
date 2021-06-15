n = gets.to_i

odd = []
even = []

a = gets.chomp.split.map(&:to_i)

n.times do |i|
  case i % 2
  when 0 then even << a[i]
  when 1 then odd << a[i]
  end
end

case n % 2
when 0 then puts "#{odd.reverse.join(" ")} #{even.join(" ")}"
when 1 then puts "#{even.reverse.join(" ")} #{odd.join(" ")}"
end