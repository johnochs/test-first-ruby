def ftoc(tempf)
  tempc = (5.to_f / 9) * ( tempf - 32) 
end

def ctof(tempc)
  tempf = (9.to_f / 5) * tempc + 32
end