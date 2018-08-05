require('pry')

require_relative('models/customer.rb')
require_relative('models/film.rb')
require_relative('models/screening.rb')
require_relative('models/ticket.rb')

Ticket.delete_all()
Screening.delete_all()
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

customer3 = Customer.new(
  {
    'name' => "Anna",
    'funds' => 50
  }
)

customer1.save()
customer2.save()
customer3.save()

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

 screening1 = Screening.new(
 {
   'film_time' => "15:00",
   'film_id' => film1.id
  }
 )

 screening2 = Screening.new(
  {
   'film_time' => "17:00",
   'film_id' => film2.id
  }
 )

 screening3 = Screening.new(
  {
   'film_time' => "18:30",
   'film_id' => film1.id
  }
 )

 screening1.save()
 screening2.save()
 screening3.save()

 ticket1 = Ticket.new(
   {
     'customer_id' => customer1.id,
     'film_id' => film1.id,
     'screening_id' => screening1.id
   }
 )

 ticket2 = Ticket.new(
   {
     'customer_id' => customer2.id,
     'film_id' => film1.id,
     'screening_id' => screening1.id
   }
 )

 ticket3 = Ticket.new(
   {
     'customer_id' => customer1.id,
     'film_id' => film2.id,     'screening_id' => screening2.id
   }
 )

 ticket4 = Ticket.new(
   {
     'customer_id' =>customer2.id,
     'film_id' => film1.id,     'screening_id' => screening3.id
   }
 )

 ticket5 = Ticket.new(
   {
     'customer_id' => customer3.id,
     'film_id' => film1.id,
     'screening_id' => screening1.id
   }
 )

ticket1.save(customer1)
ticket2.save(customer2)
ticket3.save(customer1)
ticket4.save(customer2)
ticket5.save(customer3)

binding.pry
nil
