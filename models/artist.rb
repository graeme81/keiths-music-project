require_relative( '../db/sql_runner' )

class Artist

  attr_reader :name, :id 

  def initialize( options )
    @id = nil || options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists
           (name)
           VALUES
           ('#{@name}')
           RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM artists ORDER BY name ASC"
    results = SqlRunner.run(sql)
    return results.map { |hash| Artist.new( hash ) }
  end

  
end