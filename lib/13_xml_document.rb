class XmlDocument
  
  def initialize(indent = false)
    @indent = indent
    @spaces = 0
  end
    
  def method_missing(method_name, *args)
    
    method_tags = ""
    method_tags += "  " * @spaces if @indent
    method_tags += "<#{method_name}"
    
    unless args.empty?
      args.each do |hash|
        key = hash.keys[0]
        method_tags += " #{key.to_s}='#{hash[key]}'"
      end
    end
    
    if block_given?
      method_tags += ">"
      @spaces += 1 if @indent
      method_tags += "\n" if @indent
      method_tags += "#{yield}"
      @spaces -= 1 if @indent
      method_tags += "#{"  " * @spaces}" if @indent
      method_tags += "</#{method_name}>"
      method_tags += "\n" if @indent
    else
      method_tags += "/>"
      method_tags += "\n" if @indent
    end
    method_tags
  end
  
end
