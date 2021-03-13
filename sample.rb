# 1行に複数要素ある標準入力を数値として配列で受け取る
=begin
list = gets.split(" ").map{|n| n.to_i}
p list
=end

# N回標準入力を受け取り、数値の2次元配列をつくる
=begin
N = gets.chomp.to_i
lists = Array.new(N)
N.times do |i|
    # lists[i] = gets.split(" ").map{|n| n.to_i}
    # &はmapで繰り返し呼び出される各要素にシンボル形式で呼び出したメソッドを実行する。
    lists[i] = gets.split(" ").map(&:to_i)
end
pp lists
=end