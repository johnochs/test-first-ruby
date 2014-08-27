def translate_word(word)
  vowels = ["a","e","i","o","u"]
  
  if word.start_with?("qu")
    word = word[2..-1] + word[0..1]
  end
  
  if word.start_with?("sch")
    word = word[3..-1] + word[0..2]
  end
  
  if vowels.include?(word[0])
    return word + "ay"
  else
    translate(word[1..-1] + word[0])
  end
  
end

def translate(string)
  words = string.split(' ')
  outarr = []
  words.each {|word| outarr << translate_word(word)}
  return outarr.join(' ')
end