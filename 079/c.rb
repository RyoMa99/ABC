a,b,c,d = gets.split("").map(&:to_i)

(puts "#{a}+#{b}+#{c}+#{d}=7" ; exit) if a+b+c+d == 7
(puts "#{a}-#{b}+#{c}+#{d}=7" ; exit) if a-b+c+d == 7
(puts "#{a}+#{b}-#{c}+#{d}=7" ; exit) if a+b-c+d == 7
(puts "#{a}+#{b}+#{c}-#{d}=7" ; exit) if a+b+c-d == 7
(puts "#{a}-#{b}-#{c}+#{d}=7" ; exit) if a-b-c+d == 7
(puts "#{a}-#{b}+#{c}-#{d}=7" ; exit) if a-b+c-d == 7
(puts "#{a}+#{b}-#{c}-#{d}=7" ; exit) if a+b-c-d == 7
(puts "#{a}-#{b}-#{c}-#{d}=7" ; exit) if a-b-c-d == 7
