place = {
  "Do" => "WBWBWWBWBWBWWBWBWWBW",
  "Re" => "WBWWBWBWBWWBWBWWBWBW",
  "Mi" => "WWBWBWBWWBWBWWBWBWBW",
  "Fa" => "WBWBWBWWBWBWWBWBWBWW",
  "So" => "WBWBWWBWBWWBWBWBWWBW",
  "La" => "WBWWBWBWWBWBWBWWBWBW",
  "Si" => "WWBWBWWBWBWBWWBWBWWB",
}
s = gets.chomp

puts place.select{|k,v| v.eql?(s)}.keys