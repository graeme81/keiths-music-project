require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( 'controllers/main.rb' )

get '/music' do
  erb( :index )
end