N,M = gets.split.map(&:to_i)
ac_arr = Array.new(N,0)
wa_arr = Array.new(N,0)
wa_cnt = 0

M.times do
  pn,s = gets.split
  pn = pn.to_i - 1
  if s.eql?("WA") && ac_arr[pn] == 0
    wa_arr[pn] += 1
  elsif s.eql?("AC") && ac_arr[pn] == 0
    ac_arr[pn] = 1
    wa_cnt += wa_arr[pn]
  end
end

puts "#{ac_arr.sum} #{wa_cnt}"