#ECHO Method
def echo(string)
  string
end
#SHOUT Method
def shout(string)
  string.upcase
end
#REPEAT Method
def repeat(string, times = 2)
  outstring = ((string + ' ') * times)[0..-2]
end
#START_OF_WORD Method
def start_of_word(string, num_letters)
  place = num_letters - 1
  string[0..place]
end
#FIRST_WORD Method
def first_word(string)
  words = string.split(' ')
  words[0]
end
#TITLEIZE Method
def titleize(string)
  downcase_dict = ["and", "the", "over"]
  words = string.split(" ")
  words[0].capitalize!
  words[1..-1].each {|word| word.capitalize! unless downcase_dict.include?(word)}
  words.join(" ")
end