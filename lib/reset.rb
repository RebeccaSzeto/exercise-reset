# -*- ruby encoding: utf-8 -*- VERSION = '1.0.0'

class Reset
  attr_accessor :arraynum, :arraynum2

  def union(arraynum=[], arraynum2=[])
   arraynum | arraynum2 
  end

  def intersection(arraynum, arraynum2)
   arraynum & arraynum2
  end

  def difference(arraynum, arraynum2)
   arraynum - arraynum2
  end

  def subset(arraynum, arraynum2)
   (arraynum & arraynum2) == arraynum
  end
end
