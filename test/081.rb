# count = 0
# gets.chomp.split('').tap{|x| pp x}.each{|n| count+= 1 if (n=="1")}
# gets.chomp.split('').each{|n| count+= 1 if (n=="1")}
# puts count

puts gets.chomp.chars.count("1")