class Fixnum
  
  def in_words
    
    place_hash = {0 => "",1 => 'thousand',2 => 'million',3 => 'billion',4 => 'trillion'}
    
    number = self.to_s
    
    return "zero" if number == '0'
    
    unless number.length % 3 == 0
      add_zeros = 3 - (number.length % 3)
      number = ("0" * add_zeros) + number
    end
    
    places = []
    
    until number.empty? do
      if number.length >= 3
        places << number.slice!(-3..-1)
      else
        places << number
        number.clear
      end
    end
    
    result = []
    
    places.each_with_index do |place, i|
      place_string = place_name(place)
      
      unless place_string == nil
        place_string += "#{place_hash[i]} "
        result << place_string
      end
    end
    
    result.reverse.join.strip
  end
  
  def place_name(string)
    
    return nil if string.to_i == 0
    
    word_hash = { 
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'forty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety'
    }
    
    
    out_string = ""
    
    unless string[0] == "0"
      out_string += "#{word_hash[string[0].to_i]} hundred "
    end
    if string[1..2].to_i < 20
      out_string += "#{word_hash[string[1..2].to_i]} "
    else
      unless string[1] == "0"
        out_string += "#{word_hash[string[1].to_i * 10]} "
      end
      unless string[2] == "0"
        out_string += "#{word_hash[string[2].to_i]} "
      end
    end
    out_string
  end
  
end