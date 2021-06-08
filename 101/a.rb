cnt = {"+"=>0,"-"=>0}
cnt.merge! gets.chomp.chars.group_by(&:itself).transform_values(&:count)

puts cnt["+"] - cnt["-"]