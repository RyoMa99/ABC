N = gets.to_i

vote = {}

N.times do 
  person = gets.chomp
  if vote.key?(person)
    vote[person] += 1
  else
    vote[person] = 1
  end
end

puts vote.max_by{|key,value| value}[0]