require_relative( '../models/album.rb' )
#require_relative( '../models/artist.rb' )
require( 'pry' )

Album.delete_all
#Artist.delete_all

album1 = Album.new({'title' => 'Blue & Lonesome', 'genre' =>'Rock', 'quantity' => 10, "artist_id" => 1}).save()
album2 = Album.new({'title' => 'Sticky Fingers', 'genre' =>'Rock', 'quantity' => 3, "artist_id" => 1}).save()
album3 = Album.new({'title' => 'Some Girls', 'genre' =>'Rock', 'quantity' => 7, "artist_id" => 1}).save()
album4 = Album.new({'title' => 'Let It Bleed', 'genre' =>'Rock', 'quantity' => 1, "artist_id" => 1}).save()
album5 = Album.new({'title' => 'Tattoo You', 'genre' =>'Rock', 'quantity' => 6, "artist_id" => 1}).save()

album6 = Album.new({'title' => 'Tommy', 'genre' =>'Rock', 'quantity' => 8, "artist_id" => 2}).save()
album7 = Album.new({'title' => 'Quadrophina', 'genre' =>'Rock', 'quantity' => 2, "artist_id" => 2}).save()
album8 = Album.new({'title' => 'Whos Next', 'genre' =>'Rock', 'quantity' => 10, "artist_id" => 2}).save()
album9 = Album.new({'title' => 'My Generation', 'genre' =>'Rock', 'quantity' => 4, "artist_id" => 2}).save()

album10 = Album.new({'title' => 'My Song', 'genre' =>'Jazz Fusion','quantity' => 14, "artist_id" => 3}).save()
album11 = Album.new({'title' => 'Facing You', 'genre' =>'Jazz Fusion', 'quantity' => 11, "artist_id" => 3}).save()

album12 = Album.new({'title' => 'Honkey', 'genre' =>'Prog Rock', 'quantity' => 2, "artist_id" => 4}).save()

# artist1 = Artist.new({'name' => 'The Rolling Stones'}).save()
# artist2 = Artist.new({'name' => 'The Who'}).save()
# artist3 = Artist.new({'name' => 'Keith Jarrett'}).save()
# artist4 = Artist.new({'name' => 'Keith Emerson'}).save()

