require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require_relative( '../models/stock.rb' )

get '/music/inventory' do
  @info = Stock.all()
  erb ( :"inventory/index" )
end

post '/music/inventory' do
# code for updating stock
  album = Album.find(params[:id])
  
  album.quantity = params[:quantity].to_i

  album.update()
  redirect to('/music/inventory')
end

get '/music/add' do 
  erb(:add)
end

get '/music/new_artist' do
  erb(:new_artist)
end

post '/music/new_artist' do
  @artist = Artist.new( params )
  @artist.save()
  @info = Stock.all()
  erb(:'inventory/index')
end

get '/music/new_album' do
  @artists = Artist.all
  erb(:new_album)
end

post '/music/new_album' do
  @album = Album.new( params )
  @album.save()
  @info = Stock.all()
  erb(:"inventory/index")
end

get '/music/:id/edit' do
  erb(:edit)
end

get '/music/artists' do
  @artists = Artist.all()
  erb(:artists)
end

get '/music/artists/:id' do
   @id = params[:id]
   albums = Album.all()

   @info = Array.new()

   for i in albums
    if i.artist_id == @id
      @info << i
    end
   end

  erb(:artists_albums)
end
