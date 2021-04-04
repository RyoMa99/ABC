N = gets.to_i
S = gets.chomp.split("")

ans = S.map do |el|
  char = el
  N.times do
    char = char.next[0]
  end
  char
end

puts ans.join