
class EmptyArrayException < Exception
end

# Extensions to the Array class
class Array
  include Comparable

  def mean
    verify_not_empty

    sum / size.to_f
  end
  alias average mean

  def median
    verify_not_empty

    mid = (size / 2)
    return sort[mid].to_f if size.odd?
    (sort[mid - 1] + sort[mid]) / 2.0
  end

  def variance
    verify_not_empty

    collect { |n| (n - mean)**2 }.mean
  end

  # for comparison of array means
  def <=>(other)
    verify_not_empty

    if mean < other.mean
      -1
    elsif mean > other.mean
      1
    else
      0
    end
  end

  private

  def sum
    reduce(:+)
  end

  def verify_not_empty
    if size == 0
      raise EmptyArrayException, 'computing statistics on an empty array'
    end
  end

end