require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( 'controllers/main.rb' )

get '/' do
  erb( :index )
end