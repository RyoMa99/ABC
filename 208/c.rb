n,k = gets.split.map(&:to_i)
same_count = k / n
rest = k % n

people = []
gets.chomp.split.map(&:to_i).each_with_index do |num,index|
  people << {
    index: index,
    num: num,
    count: same_count
  }
end

people.sort_by! {|h| h[:num]}
rest.times do |i|
  people[i][:count] += 1
end
people.sort_by! {|h| h[:index]}

people.each { |person| puts person[:count] }