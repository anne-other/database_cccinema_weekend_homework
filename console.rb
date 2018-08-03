require_relative('models/customer.rb')
require_relative('models/film.rb')
require_relative('models/ticket.rb')

Customer.delete_all()

customer1 = Customer.new(
  {
    'name' => "Anne",
    'funds' => 20
  }
)

customer1.save()

film1 = Film.new(
  {
    'title' => "The Lord Of The Rings, Fellowship Of The Ring",
    'price' => 5
  }
)

 film1.save()
