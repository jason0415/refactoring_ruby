require_relative 'movie'
require_relative 'customer'
require_relative 'rental'

movie = Movie.new('hello', Movie::REGULAR)
movie.price_code = Movie::NEW_RELEASE

customer = Customer.new('jason')
customer.add_rental(Rental.new(movie, 10))

puts customer.statement