require "set"
n = gets.to_i

# #の座標だけを集める
def read(n)
  s = Set.new
  n.times do |i|
    line = gets.chomp.chars
    line.each_with_index do |e,j|
      if e.eql?("#")
        s.add([i,j])
      end
    end
  end
  return s
end

S = read(n)
T = read(n)

4.times do
  #最も左上にあるものを引くことで基準を原点に合わせる
  mx,my = S.min
  S.map! do |x,y|
    [x-mx,y-my]
  end

  mx,my = T.min
  T.map! do |x,y|
    [x-mx,y-my]
  end

  if S == T
    puts "Yes"
    exit
  end

  # 90度右回転はx,yをy,-xにすればよい
  S.map! do |x,y|
    [y,-x]
  end
end

puts "No"