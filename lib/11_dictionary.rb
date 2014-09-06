class Dictionary
  def initialize
    @entries = Hash.new(nil)
  end
  
  def entries
    @entries
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include?(keyword)
    @entries.key?(keyword)
  end
  
  def find(keyword)
    @entries.select {|k,v| k.start_with?(keyword)}
  end
  
  def printable
    dict_keys = @entries.keys.sort
    out_string = ""
    dict_keys.each_with_index do |key, i|
      out_string = out_string + "[#{key}] \"#{@entries[key]}\""
      out_string = out_string + "\n" unless i == @entries.size - 1
    end
    out_string
  end
  
  def add(input)
    if input.is_a?(Hash)
      key = input.keys[0]
      value = input.values[0]
      @entries.store(key, value)
    else
      @entries.store(input, nil)
    end
  end
end
