class Customer

  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end

  def statement
    res = "Rental Record for #{@name}\n"
    @rentals.each do |rental|
      res += "\t" + rental.movie.title + "\t" + rental.charge.to_s + "\n"
    end
    # add footer lines
    res << "Amount owed is #{total_charge}\n"
    res << "You earned #{total_frequent_renter_points} frequent renter points"
    res
  end

  def total_charge
    @rentals.inject(0) { |sum, rental| sum + rental.charge }
  end

  def total_frequent_renter_points
    @rentals.inject(0) { |sum, rental| sum + rental.frequent_renter_points }
  end

end