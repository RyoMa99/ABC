s = gets.chomp.chars

cnt = 0
s.length.times do |i|
  if i == 0
    unless s[i].eql?("A")
      puts "WA"
      exit
    end
    next
  end

  unless s[i].eql? s[i].downcase
    if i < 2 || i == s.length-1
      puts "WA"
      exit
    end

    unless s[i].eql?("C") && cnt == 0
      puts "WA"
      exit
    end
    cnt += 1
  end
end

puts cnt == 0 ? "WA" : "AC"
