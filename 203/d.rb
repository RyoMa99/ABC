n,k = gets.split.map(&:to_i)

a = []
n.times do
  a << gets.split.map(&:to_i)
end

middle = []
(n-k+1).times do |i|
  (n-k+1).times do |j|
    target = []

    k.times do |l|
      target << a[i+l][j...(j+k)]
    end
    
    middle << target.flatten.sort[(k**2)/2]
  end
end


puts middle.min