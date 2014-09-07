class Array
  
  def sum
    self.inject(0) {|sum, x| sum + x}
  end
  
  def square
    self.map {|x| x**2}
  end
  
  def square!
    self.map! {|x| x**2}
  end
  
end