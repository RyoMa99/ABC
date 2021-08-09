n,m = gets.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort
b = gets.chomp.split.map(&:to_i).sort

ans = []
n_a = a.shift
n_b = b.shift
while true
  ans << (n_a - n_b).abs
  if n_a == n_b
    break
  elsif n_a > n_b
    n_b = b.shift
    break if n_b.nil?
  else
    n_a = a.shift
    break if n_a.nil?
  end
end

puts ans.min