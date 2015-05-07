require_relative 'frequent_point'

class ChildrenPrice
  include FrequentPoint

  def charge(days_rented)
    res = 1.5
    res += (days_rented - 3) * 1.5 if days_rented > 3
    res
  end

end