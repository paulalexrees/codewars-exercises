class Array
  def square
    map{|x|x**2}
  end

  def cube
    map{|x|x**3}
  end

  def average
    self != [] ? (sum / size.to_f) : "NaN"
  end

  def sum
    reduce{|result, value| result + value}
  end

  def even
    select{|x|x.even?}
  end

  def odd
    select{|x|x.odd?}
  end


end

numbers = [1,2]
print numbers.average
