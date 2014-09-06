class RPNCalculator
  
  def initialize
    @number_stack ||= []
  end
  
  def push(num)
    @number_stack << num
  end
  
  def plus
    raise 'calculator is empty' unless @number_stack.size > 1
    @number_stack << @number_stack.pop + @number_stack.pop
  end
  
  def value
    @number_stack.last
  end
  
  def minus
    raise 'calculator is empty' unless @number_stack.size > 1
    b = @number_stack.pop
    a = @number_stack.pop
    @number_stack << (a - b)
  end
  
  def divide
    raise 'calculator is empty' unless @number_stack.size > 1
    b = @number_stack.pop.to_f
    a = @number_stack.pop
    @number_stack << a / b
  end
  
  def times
    raise 'calculator is empty' unless @number_stack.size > 1
    @number_stack << @number_stack.pop * @number_stack.pop
  end
  
  def tokens(string)
    @token_array = string.split(' ')
    @token_array.map! { |x| (/\d+/ =~ x).nil? ? x.to_sym : x.to_i }
  end
  
  def evaluate(string)
    tokens(string)
    @token_array.each do |element|
      case element
      when :+
        self.plus
      when :-
        self.minus
      when :*
        self.times
      when :/
        self.divide
      else
        self.push(element)
      end
    end
    self.value
  end
end
