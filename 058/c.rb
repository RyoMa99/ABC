n = gets.to_i
alpha_cnt = Array.new(26,0)
alpha = [*'a'..'z']
gets.chomp.chars.each do |c|
  i = alpha.index(c)
  alpha_cnt[i] += 1
end

(n-1).times do
  alpha_cnt_tmp = Array.new(26,0)
  gets.chomp.chars do |c|
    i = alpha.index(c)
    alpha_cnt_tmp[i] += 1
  end
  alpha_cnt.each_with_index do |item,i| 
    alpha_cnt[i] = [item,alpha_cnt_tmp[i]].min
  end
end

str = ""
alpha_cnt.each_with_index do |c,i|
  str+= alpha[i]*c
end

puts str