s = gets.chomp.chars
dp = Array.new(8){ Array.new(s.length+1,0) }
dp.unshift(Array.new(s.length+1,1))
chokudai = "chokudai".chars

1.upto(8) do |i|
  i.upto(s.length) do |j|
    if chokudai[i-1].eql?(s[j-1])
      dp[i][j] = (dp[i][j-1] + dp[i-1][j-1]) % (10**9 + 7)
    else
      dp[i][j] = dp[i][j-1]
    end
  end
end
# p dp
puts dp[-1][-1]