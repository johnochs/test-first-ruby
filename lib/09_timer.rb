class Timer
  
  def initialize(timer = 0)
    @timer = timer
  end
  
  def seconds
    @timer
  end
  
  def seconds=(seconds)
    @timer += seconds
  end
  
  def time_string
    hours = @timer / 3600
    minutes = (@timer - hours*3600) / 60
    seconds = @timer - hours*3600 - minutes*60
    #"#{"%02d" % hours}:#{"%02d" % minutes}:#{"%02d" % seconds}"
    out_str = "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end
  
  def padded(num)
    n = num.to_s.size
    zeros = 2 - n
    "#{'0' * zeros}#{num}"
  end
  
end