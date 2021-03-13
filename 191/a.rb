V, T, S ,D = gets.split.map(&:to_i)

puts (D < V * T || V * S < D) ? "Yes" : "No"