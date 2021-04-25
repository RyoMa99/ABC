n = gets.to_i
s = gets.chomp

if n % 2 == 0
  puts -1
  exit
end

make = "b"

if s.eql? make
  puts 0
  exit
end

1.upto((n-1)/2) do |i|
  case i % 3
  when 1
    make = "a#{make}c"
  when 2
    make = "c#{make}a"
  when 0
    make = "b#{make}b"
  end

  if s.eql? make
    puts i
    exit
  end
end

puts -1

