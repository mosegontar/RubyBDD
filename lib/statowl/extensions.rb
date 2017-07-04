class Array
  include Comparable

  def mean
    sum / size.to_f
  end
  alias :average :mean

  def median
    mid = (size / 2)
    return sort[mid].to_f if size.odd?
    (sort[mid-1] + sort[mid]) / 2.0
  end

  def variance
    squared_deviations = self.collect do |n|
      (n - self.mean) ** 2
    end
    squared_deviations.sum / size
  end

  # for comparison of array means
  def <=>(other_array)
    if self.mean < other_array.mean
      -1
    elsif self.mean > other_array.mean
      1
    else
      0
    end
  end

  protected

  def sum
    reduce(:+)
  end

end