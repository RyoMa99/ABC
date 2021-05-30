N,W = gets.split.map(&:to_i)

v = []
w = []

N.times do |i|
  v[i],w[i] = gets.split.map(&:to_i)
end


np = Array.new(N+1){Array.new(W+1,0)}

N.times do |i| # ターゲットの荷物
  (W+1).times do |j| # ナップザックのサイズ
    # ターゲットの荷物の重さがナップザックのサイズより小さい時は表の一つ上の数字を引き継ぐ
    if j < w[i]
      np[i+1][j] = np[i-1][j]
      next
    end

    # そのアイテムがある時とそのアイテムがない時で大きいほうを取る
    np[i+1][j] = [np[i][j-w[i]]+v[i], np[i][j]].max

  end
end

puts np[-1][-1]