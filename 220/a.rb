a,b,c = gets.split.map(&:to_f)
puts (a/c).ceil <= (b/c).floor ? (c * (a/c).ceil).to_i : -1