require_relative('models/customer.rb')
require_relative('models/film.rb')
require_relative('models/ticket.rb')

customer1 = Customer.new(
  {
    'name' => "Anne",
    'funds' => 20
  }
)

customer1.save()
