member = {
  "a" => gets.chomp.split(""),
  "b" => gets.chomp.split(""),
  "c" => gets.chomp.split("")
}

nominate = member["a"].shift

while true
  if member[nominate].empty?
    puts nominate.upcase
    exit
  end
  nominate = member[nominate].shift
end