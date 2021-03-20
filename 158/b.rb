N,A,B = gets.split.map(&:to_i)

puts N % (A + B) > A ?
  N / (A + B) * A + A :
  N / (A + B) * A + N % (A + B)