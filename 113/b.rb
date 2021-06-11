n = gets.to_i

t,a = gets.split.map(&:to_i)

tmp = 1000 * (t-a)

ans = -1
near = 100000000

h = gets.chomp.split.map(&:to_i)
1.upto(n) do |i|
  num = (tmp - h[i-1] * 6).abs
  if near > num
    near = num
    ans = i
  end
end

puts ans