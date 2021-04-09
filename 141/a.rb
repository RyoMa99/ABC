weather = ["Sunny","Cloudy","Rainy"]

puts weather[(weather.find_index(gets.chomp) + 1) % 3]