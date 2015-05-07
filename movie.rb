require_relative 'regular_price'
require_relative 'new_release_price'
require_relative 'children_price'

class Movie

  REGULAR = 0
  NEW_RELEASE = 1
  CHILDREN = 2

  attr_accessor :price_code
  attr_reader :title

  def initialize(title, price_code)
    @title, @price_code = title, price_code
  end

  def price_code=(price_code)
    @price_code = price_code
    @price = case price_code
               when NEW_RELEASE then NewReleasePrice.new
               when CHILDREN then ChildrenPrice.new
               else RegularPrice.new
             end
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
    @price.frequent_renter_points(days_rented)
  end

end