s = gets.chomp.split("")
ans = 0

10000.times do |i|

  target = Array.new(10,false)
  x = i
  4.times do
    target[x%10] = true
    x /= 10
  end

  isPossible = true
  10.times do |j|
    case s[j]
    when "o"
      isPossible = false unless target[j]
    when "x"
      isPossible = false if target[j]
    end
  end

  ans += 1 if isPossible
end

puts ans