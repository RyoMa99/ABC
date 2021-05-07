input = gets.split.map(&:to_i).group_by(&:itself).transform_values(&:size)
puts (input[5] == 2 && input[7] == 1) ? "YES" : "NO"