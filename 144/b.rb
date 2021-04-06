canAnswer = [*1..9]

N = gets.to_i

ans = "No"
1.upto(9) do |i|
  if N % i ==0 && canAnswer.include?(N/i)
    ans = "Yes"
    break
  end
end

puts ans