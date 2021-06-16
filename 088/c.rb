input = []
3.times do
  input << gets.chomp.split.map(&:to_i)
end

ans = "No"
101.times do |i|
  101.times do |j|
    101.times do |k|
      a_1 = i
      a_2 = j
      a_3 = k
      b_1 = input[0][0] - a_1
      b_2 = input[0][1] - a_1
      b_3 = input[0][2] - a_1

      ans = "Yes" if input[1][0] == a_2 + b_1 && input[1][1] == a_2 + b_2 && input[1][2] == a_2 + b_3 && input[2][0] == a_3 + b_1 && input[2][1] == a_3 + b_2 && input[2][2] == a_3 + b_3
    end
  end
end

puts ans