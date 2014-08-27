#ADD Method
def add(a, b)
  return a + b
end
#SUBTRACT Method
def subtract(a, b)
  return a - b
end
#SUM Method
def sum(array)
  total = 0
  array.each {|x| total += x}
  total
end
#MULTIPLY Method
def multiply(*args)
  total = 1
  args.each do |value|
    total = total*value
  end
  total
end
#POWER Method
def power(a, b)
  return a**b
end
#FACTORIAL Method
def factorial(n)
  if n == 0
    return 1
  elsif n == 1
    return 1
  else
    return n * factorial(n - 1)
  end
end