N,K = gets.split.map(&:to_i)

man = Array.new(N,0)

K.times do
  d = gets.to_i
  gets.chomp.split.map(&:to_i).each do |el|
    man[el-1] += 1
  end
end

no_treat_man = man.select{|n| n == 0}

puts no_treat_man.length