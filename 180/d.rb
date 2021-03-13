X,Y,A,B = gets.split.map(&:to_i)

ex = 0
x = X
while x * A < x + B and x < Y
  ex += 1
  x *= A
end

ex += (Y - 1 - x) / B

puts ex