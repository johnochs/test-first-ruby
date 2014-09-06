class XmlDocument
    
  def method_missing(method_name, *args, &block)
    
    method_tags = "<#{method_name}"
    
    unless args.empty?
      args.each do |hash|
        key = hash.keys[0]
        method_tags += " #{key.to_s}='#{hash[key]}'"
      end
    end
    
    if block_given?
      method_tags += ">"
      method_tags += "#{yield}"
      method_tags += "</#{method_name}>"
    else
      method_tags += "/>"
    end
    
  end
  
end
