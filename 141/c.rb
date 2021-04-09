N,K,Q = gets.split.map(&:to_i)

point = Array.new(N,0)

Q.times do
  answer = gets.to_i - 1
  point[answer] += 1
end

point.each do |el|
  alive = if K - (Q - el) > 0
    "Yes"
  else
    "No"
  end

  puts alive
end