isSiri = true

before = ""
appeared_words = []
gets.to_i.times do
  word = gets.chomp

  isSiri = false unless before.empty? || word[0].eql?(before) && !appeared_words.include?(word)
  appeared_words << word
  before = word[-1]
end

puts isSiri ? "Yes" : "No"