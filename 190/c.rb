N,M = gets.split.map(&:to_i)

conditions = []
M.times do
  conditions << gets.chomp.split.map(&:to_i)
end

K = gets.to_i

choices = []
K.times do
  choices << gets.chomp.split.map(&:to_i)
end

# 直積を用いてボールを置く皿の組み合わせを全列挙
# Kが最大16で直積も高々2**16だから可能
chice = choices.shift
prod = chice.product(*choices)

ans = 0
prod.each do |comb|
  comb.uniq!
  cnt = 0
  conditions.each do |condition|
    cnt += 1 if comb.include?(condition[0]) && comb.include?(condition[1])
  end
  ans = cnt if ans < cnt
end

puts ans