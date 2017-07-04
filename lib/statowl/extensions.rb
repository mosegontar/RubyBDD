class Array

  def mean
    sum / size.to_f
  end
  alias :average :mean

  def median
    mid = (size / 2)
    return sort[mid].to_f if size.odd?
    (sort[mid-1] + sort[mid]) / 2.0
  end


  private

  def sum
    reduce(:+)
  end

end