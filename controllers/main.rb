require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( '../models/album.rb' )

get '/inventory' do
  sql = "SELECT ar.name, al.title, al.genre, al.quantity
         FROM artists ar
         LEFT JOIN albums al
         ON al.artist_id = ar.id"
  records = SqlRunner.run( sql )

  @info = Array.new
  
    for i in records
      stock = i['quantity'].to_i

      if stock < 4
        i.merge!({stock_level: "Low"})
      elsif stock > 3 && stock < 7
        i.merge!({stock_level: "Medium"})
      else
        i.merge!({stock_level: "High"})
      end

    @info << i
    end
    
  erb ( :"inventory/index" )
end
