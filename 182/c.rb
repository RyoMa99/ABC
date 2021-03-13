# 削除する数字を要素番号で指定できるよう配列に分解して持つ
N = gets.chomp.split("").map(&:to_i)

# 答えの桁数
ans = -1

# 0個以上桁数個未満の削除する数字の数を指定
N.length.times do |i|
  # 削除する個数分、削除する要素番号の組み合わせを桁数の範囲内で作成
  combs = [*0...N.length].combination(i).to_a
  # 組み合わせの数だけループを回し、実際に削除後のNを作成する
  combs.each do |comb|
    cut_num = []
    # Nの要素を一つずつチェック。combに含まれている要素番号はcut_numに含めない
    N.length.times do |j|
      next if comb.include?(j)
      cut_num.push N[j]
    end
    if cut_num.join.to_i % 3 == 0
      ans = i
      # 削除する桁数が最小値の時を求めているのでbreakして良し
      break
    end
  end
  # ansが-1でなければ３で割り切れる数を作る最小削除数が決定しているのでループを抜けてよい
  break if ans != -1
end

puts ans
