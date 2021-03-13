def dec_to_oct dec
  oct = ""
  while (dec / 8) > 0
    oct.insert(0, (dec%8).to_s)
    dec /= 8
  end
  oct.insert(0, dec.to_s)
end

N = gets.to_i

lists = []

1.upto(N) do |i|
  oct = dec_to_oct i
  dec = i.to_s
  lists << i if !oct.index("7").nil? || !dec.index("7").nil?
end

pp N - lists.size