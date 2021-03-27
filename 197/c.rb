# rubyだと単純なbit全探索でTLEになることがある
# 特にarray等を一緒に扱うとTLEになることが多い

N = gets.to_i
A = gets.chomp.split.map(&:to_i)

min = 100000000000

(1<<(N-1)).upto((1<<N) - 1) do |bit_comb|
  or_num = 0
  xor_num = 0
  N.times do |target|
    or_num |= A[target]
    if bit_comb & (1 << target) != 0
      # フラグが立っている　⇒　グループの終わり
      xor_num ^= or_num
      or_num = 0
    end
  end
  min = xor_num if min > xor_num
end

puts min
