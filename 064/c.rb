n = gets.to_i
a = gets.chomp.split.map(&:to_i)

grades = {
  gray: 0,
  blown: 0,
  green: 0,
  light_blue: 0,
  blue: 0,
  yellow: 0,
  orange: 0,
  red: 0
}
over = 0

a.each do |num|
  case
  when num < 400 then grades[:gray] += 1
  when num >= 400 && num < 800 then grades[:blown] += 1
  when num >= 800 && num < 1200 then grades[:green] += 1
  when num >= 1200 && num < 1600 then grades[:light_blue] += 1
  when num >= 1600 && num < 2000 then grades[:blue] += 1
  when num >= 2000 && num < 2400 then grades[:yellow] += 1
  when num >= 2400 && num < 2800 then grades[:orange] += 1
  when num >= 2800 && num < 3200 then grades[:red] += 1
  when num >= 3200 then over += 1
  end
end

cnt = grades.values.select{|num| num != 0}.count
puts "#{[cnt,1].max} #{cnt+over}"