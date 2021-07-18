n = gets.to_i
s = []
n.times { s << gets.to_i }

dp = Array.new(n+1){Array.new(10001,0)}
dp[0][0] = 1

1.upto(n) do |i|
  10001.times do |j|
    if dp[i-1][j] == 1
      dp[i][j] = 1
      dp[i][j+s[i-1]] = 1
    end
  end
end

10000.downto(0) do |i|
  if (dp[-1][i] == 1 && i % 10 != 0) || i == 0
    puts i
    exit
  end
end