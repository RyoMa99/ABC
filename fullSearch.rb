require "benchmark"
N = 20

Benchmark.bm 30 do |r|
  r.report "bit full search" do
    lists = []
    # 全探索は何も選択しないを含めてN**2個存在する
    (1 << N).times do |bit|
      list = []
      N.times do |i|
        list << i if (bit & 1 << i) != 0
      end
      lists << list
    end
    # pp lists.size
  end

  r.report "combination full search" do
    lists = []
    (N+1).times do |i|
      (0...N).to_a.combination(i).to_a.each{|list| lists << list}
    end
    # pp lists.size
  end
end
