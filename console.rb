require('pry')

require_relative('models/customer.rb')
require_relative('models/film.rb')
require_relative('models/ticket.rb')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

customer1 = Customer.new(
  {
    'name' => "Anne",
    'funds' => 20
  }
)

customer2 = Customer.new(
  {
    'name' => "Richard",
    'funds' => 10
  }
)

customer1.save()
customer2.save()

film1 = Film.new(
  {
    'title' => "The Lord Of The Rings, Fellowship Of The Ring",
    'price' => 5
  }
)

film2 = Film.new(
  {
    'title' => "Sweeney Todd",
    'price' => 4
  }
)

 film1.save()
 film2.save()

 ticket1 = Ticket.new(
   {
     'customer_id' => customer1.id,
     'film_id' => film1.id
   }
 )

 ticket2 = Ticket.new(
   {
     'customer_id' => customer2.id,
     'film_id' => film1.id
   }
 )

 ticket3 = Ticket.new(
   {
     'customer_id' => customer1.id,
     'film_id' => film2.id
   }
 )

 ticket4 = Ticket.new(
   {
     'customer_id' =>customer2.id,
     'film_id' => film1.id
   }
 )

ticket1.save(customer1)
ticket2.save(customer2)
ticket3.save(customer1)
ticket4.save(customer2)

binding.pry
nil
