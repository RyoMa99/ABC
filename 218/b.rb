alph = [*"a".."z"]
num = gets.chomp.split.map(&:to_i)

ans = ""
num.each do |i|
  ans << alph[i-1]
end

puts ans