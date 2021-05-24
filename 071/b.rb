s = gets.chomp.split("")

[*"a".."z"].each do |c|
  unless s.include?(c)
    puts c 
    exit
  end
end

puts "None"