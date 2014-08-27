class Book
  
  def titleize(name)
    words = name.split(' ')
    exceptions = ["and", "but", "or", "in", "the", "of", "a", "an"]
    words.each {|word| word.capitalize! unless exceptions.include?(word)}
    words.first.capitalize!
    words.join(' ')
  end
  
  def title=(title)
    @title = titleize(title)
  end
  
  def title
    @title
  end
end
