require_relative('../db/sql_runner.rb')

class Screening

  attr_reader :id
  attr_accessor :film_time, :film_id

  def initialize(options)
    @id = options['id'] if options['id']
    @film_time = options['film_time']
    @film_id = options['film_id']
  end

  def save()
    sql = "INSERT INTO screenings (film_time, film_id) VALUES ($1, $2) RETURNING id"
    values = [@film_time, @film_id]
    screening = SqlRunner.run(sql, values)
    @id = screening[0]['id'].to_i()
  end

  def update()
    sql = "UPDATE screenings SET (film_time, film_id) = ($1, $2) WHERE id = $3"
    values = [@film_time, @film_id, @id]
    SqlRunner.run(sql, values)
  end

end
