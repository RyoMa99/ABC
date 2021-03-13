# bit全探索で全パターン探す

N,M,X = gets.split.map(&:to_i)
C = []
A = []
N.times do |i|
  C[i],*A[i] = gets.split.map(&:to_i)
end

amounts = []
(1<<N).times do |bit|
  amount = 0
  skils = Array.new(M,0)
  N.times do |i|
    if(bit & 1 << i) != 0
      amount += C[i]
      # [0,0,0] + [2,4,3] ⇒ [[0,2],[0,4],[0,3]].map(&:sum)の動きをする
      skils = skils.zip(A[i]).map(&:sum)
    end
  end
  amounts << amount if skils.min >= X
end

puts amounts.length !=0 ? amounts.min : -1