a,b,c = gets.split

puts (a[-1].eql?(b[0])) && (b[-1].eql?(c[0])) ? "YES" : "NO"