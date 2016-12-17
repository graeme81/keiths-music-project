require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/album.rb' )

get '/inventory' do
  sql = "SELECT ar.name, al.title, al.quantity
         FROM artists ar
         LEFT JOIN albums al
         ON al.artist_id = ar.id"
  @info = SqlRunner.run( sql )

# binding.pry

  #@info = Album.all()
  erb ( :"inventory/index" )
end
