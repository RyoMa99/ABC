def ReLU x
  if x >= 0
    return x
  else
    return 0
  end
end

puts ReLU gets.chomp.to_i