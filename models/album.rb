require_relative( '../db/sql_runner')

class Album

  attr_reader :title, :quantity, :id, :artist_id 

  def initialize( options )
    @id = nil || options['id'].to_i
    @title = options['title']
    @quantity = options['quantity']
    @artist_id = options['artist_id']
  end

  def save()
    sql = "INSERT INTO albums
           (title, quantity, artist_id)
           VALUES
           ('#{@title}', '#{@quantity}', '#{@artist_id}')
           RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM albums"
    results = SqlRunner.run( sql )
    return results.map { |i| Album.new( i ) }
  end

end