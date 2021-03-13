H,W = gets.split.map(&:to_i)

blocks = []

H.times do
  blocks << gets.chomp.split.map(&:to_i)
end
blocks.flatten!
min = blocks.min

pp blocks.inject(0){|sum,block| sum += (block-min)}