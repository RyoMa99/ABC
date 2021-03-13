def amountChecker (x, amount=100, count = 0)
  return count if amount >= x
  amount = ((amount * (1.01.to_r * 100).to_i) / 100 ).floor
  amountChecker(x,amount,count+=1)
end

puts amountChecker(gets.to_i)