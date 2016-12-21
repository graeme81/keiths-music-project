require_relative( '../db/sql_runner')
require ('pry')

class Album

  attr_reader :title, :genre, :id, :artist_id, :quantity

  def initialize( options )
    @id = nil || options['id'].to_i
    @title = options['title']
    @genre = options['genre']
    @quantity = options['quantity'].to_i
    @artist_id = options['artist_id']
  end

  def save()
    sql = "INSERT INTO albums
           (title, genre, quantity, artist_id)
           VALUES
           ('#{@title}', '#{@genre}', '#{@quantity}', '#{@artist_id}')
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

  def self.find(id)
    sql = "SELECT * FROM albums
           WHERE id = #{id}"

    albums = SqlRunner.run(sql)
    return Album.new(albums.first)
  end

  def self.update( options )
    
    sql = " UPDATE albums SET 
            title = '#{options['title']}',
            genre = '#{options['genre']}',
            quantity = #{options['quantity']}
            WHERE id = #{options['id']} 
            "
    SqlRunner.run(sql)
  end

end