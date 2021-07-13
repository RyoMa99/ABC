n = gets.to_i
n = n % 30

ans = case n 
when 0 then 123456
when 1 then 213456
when 2 then 231456
when 3 then 234156
when 4 then 234516
when 5 then 234561
when 6 then 324561
when 7 then 342561
when 8 then 345261
when 9 then 345621
when 10 then 345612
when 11 then 435612
when 12 then 453612
when 13 then 456312
when 14 then 456132
when 15 then 456123
when 16 then 546123
when 17 then 564123
when 18 then 561423
when 19 then 561243
when 20 then 561234
when 21 then 651234
when 22 then 615234
when 23 then 612534
when 24 then 612354
when 25 then 612345
when 26 then 162345
when 27 then 126345
when 28 then 123645
when 29 then 123465
end

puts ans