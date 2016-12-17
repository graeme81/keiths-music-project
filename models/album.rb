require_relative( '../db/sql_runner')

class Album

  attr_reader :name, :quantity, :id 

  def initialize( options )
    @id = nil || options['id'].to_i
    @name = options['name']
    @quantity = options['quantity']
  end

  def save()
    sql = "INSERT INTO albums
           (name, quantity)
           VALUES
           ('#{@name}', '#{@quantity}')
           RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end


end