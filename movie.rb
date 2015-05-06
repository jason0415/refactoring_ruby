class Movie

  REGULAR = 0
  NEW_RELEASE = 1
  CHILDREN = 2

  attr_accessor :price_code
  attr_reader :title

  def initialize(title, price_code)
    @title, @price_code = title, price_code
  end

end