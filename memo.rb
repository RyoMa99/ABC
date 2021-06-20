n = gets.to_i
$memo = Array.new(n+1,0)

def fib(num)
  return num if [0,1].include? num
  return $memo[num] if $memo[num] != 0

  return $memo[num] = fib(num-1) + fib(num-2)
  # return  fib(num-1) + fib(num-2)
end

# p $memo
puts fib(n)