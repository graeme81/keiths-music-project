require_relative( '../models/album.rb' )
#require_relative( '../models/artist.rb' )
require( 'pry' )

Album.delete_all
#Artist.delete_all

album1 = Album.new({'title' => 'Blue & Lonesome', 'quantity' => 10, "artist_id" => 1}).save()
album2 = Album.new({'title' => "Sticky Fingers", 'quantity' => 10, "artist_id" => 1}).save()
album3 = Album.new({'title' => "Some Girls", 'quantity' => 10, "artist_id" => 1}).save()
album4 = Album.new({'title' => "Let It Bleed", 'quantity' => 10, "artist_id" => 1}).save()
album5 = Album.new({'title' => "Tattoo You", 'quantity' => 10, "artist_id" => 1}).save()

album6 = Album.new({'title' => "Tommy", 'quantity' => 10, "artist_id" => 2}).save()
album7 = Album.new({'title' => "Quadrophina", 'quantity' => 10, "artist_id" => 2}).save()
album8 = Album.new({'title' => "Whos Next", 'quantity' => 10, "artist_id" => 2}).save()
album9 = Album.new({'title' => 'My Generation', 'quantity' => 10, "artist_id" => 2}).save()

album10 = Album.new({'title' => 'My Song', 'quantity' => 10, "artist_id" => 3}).save()
album11 = Album.new({'title' => 'Facing You', 'quantity' => 10, "artist_id" => 3}).save()

album12 = Album.new({'title' => 'Honkey', 'quantity' => 10, "artist_id" => 4}).save()

# artist1 = Artist.new({'name' => 'The Rolling Stones'}).save()
# artist2 = Artist.new({'name' => 'The Who'}).save()
# artist3 = Artist.new({'name' => 'Keith Jarrett'}).save()
# artist4 = Artist.new({'name' => 'Keith Emerson'}).save()

