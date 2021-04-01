def isPrimeNum?(num)
  return false if num == 1
  return true if num == 2
  return false if num % 2 == 0
  3.step(num-1,2) do |i|
    return false if num % i == 0
  end
  
  true
end

X = gets.to_i

ans = 0

X.upto(1000000) do |num|
  if isPrimeNum? num
    ans = num 
    break
  end
end
puts ans