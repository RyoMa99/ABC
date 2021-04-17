A,B = gets.split.map(&:to_i)
diff = B - A

diff.downto(1) do |i|
  if A <= i * (B / i - 1)
    puts i
    exit
  end
end