n = gets.to_i

def f(rest,s)
  return puts s if rest == 0
  ["a","b","c"].each{ |char| f(rest-1,s+char) }
end

f(n,"")