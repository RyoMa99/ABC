$ans = []
X = gets.chomp.chars
N = gets.to_i
S = []
N.times do 
  S << gets.chomp
end

def compare(check_index,names)
  26.times do |i|
    return if names.length == 0
    if names.length == 1
      $ans << names[0]
      return
    end
    shortest_names = names.select{|name| name[check_index].nil?}
    names -= shortest_names
    $ans << shortest_names[0] unless shortest_names.empty?
    same_word_names = names.select{|name| name[check_index].eql?(X[i])}
    names -= same_word_names
    compare(check_index+1,same_word_names)
  end
end

compare(0,S)
puts $ans