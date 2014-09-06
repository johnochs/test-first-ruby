class Temperature
  
  def initialize(options)
    if options.has_key?(:f)
      @tempf = options[:f]
      @tempc = ftoc(options[:f])
    else
      @tempc = options[:c]
      @tempf = ctof(options[:c])
    end
  end
  
  def in_fahrenheit
    @tempf
  end
  
  def in_celsius
    @tempc
  end
  
  def ftoc(tempf)
    rawc = (5.to_f / 9) * (tempf - 32)
  end
  
  def ctof(tempc)
    rawf = (tempc * 9.to_f) / 5 + 32
  end
  
  #FACTORY METHODS BELOW
  
  def self.from_celsius(c)
    Temperature.new(c: c)
  end
  
  def self.from_fahrenheit(f)
    Temperature.new(f: f)
  end
  

end

#UTILITY CLASSES

class Celsius < Temperature
  
  def initialize(degc)
    super(c: degc)
  end
  
end

class Fahrenheit < Temperature
  
  def initialize(degf)
    super(f: degf)
  end
  
end