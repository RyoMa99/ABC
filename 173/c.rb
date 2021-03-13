H,W,K = gets.split.map(&:to_i)

c = []
H.times do |i|
  c << gets.chomp
end

ans = 0

# 赤で塗りつぶす行と列の組み合わせは各行列「塗る・塗らない」2択
# 最大でも2の12乗個なので全通り試す
(2**H).times do |h|
  (2**W).times do |w|
    cnt = 0

    # 各マス全探索
    # 赤で塗りつぶす対象ではなく、シャープのところをカウントする
    H.times do |hi|
      W.times do |wi|
        #  h(組み合わせ)をhi右シフトし、1のビット＆をとるとhi行目を塗ったか塗ってないかが分かる(0は塗ってない。1は塗った)
        next if (h >> hi & 1) == 1
        next if (w >> wi & 1) == 1
        cnt += 1 if (c[hi][wi].eql?("#"))
      end
    end

    ans += 1 if cnt == K
  end
end

puts ans