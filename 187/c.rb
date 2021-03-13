require 'set'

N = gets.chomp.to_i

nEx = Set.new
iEx = Set.new
N.times do
  s = gets.chomp
  if s[0] == '!'
    iEx.add s.delete_prefix('!')
  else
    nEx.add s 
  end
end

col = nEx & iEx

puts col.length == 0 ? 'satisfiable' : col.to_a[0]