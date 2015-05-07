require_relative 'frequent_point'

class RegularPrice
  include FrequentPoint

  def charge(days_rented)
    res = 2
    res += (days_rented - 2) * 1.5 if days_rented > 2
    res
  end

end