require 'time'

def measure(n = 1)
  now = Time.now
  n.times do
    yield
  end
  later = Time.now
  delta = (later - now) / n
end