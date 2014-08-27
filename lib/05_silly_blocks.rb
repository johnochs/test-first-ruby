#REVERSER Method
def reverser
  string = yield
  word_array = string.split(' ').each {|word| word.reverse!}
  word_array.join(' ')
end
#ADDER Method
def adder(add = 1)
  num = yield
  num + add
end
#REPEATER Method
def repeater(times = 1)
  times.times {yield}
end