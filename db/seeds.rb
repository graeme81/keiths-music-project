require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require( 'pry' )

Album.delete_all
Artist.delete_all

album1 = Album.new({'name' => 'Blue & Lonesome', 'quantity' => 10}).save()
album2 = Album.new({'name' => "Sticky Fingers", 'quantity' => 10}).save()
album3 = Album.new({'name' => "Some Girls", 'quantity' => 10}).save()
album4 = Album.new({'name' => "Let It Bleed", 'quantity' => 10}).save()
album5 = Album.new({'name' => "Tattoo You", 'quantity' => 10}).save()

album6 = Album.new({'name' => "Tommy", 'quantity' => 10}).save()
album7 = Album.new({'name' => "Quadrophina", 'quantity' => 10}).save()
album8 = Album.new({'name' => "Whos Next", 'quantity' => 10}).save()
album9 = Album.new({'name' => 'My Generation', 'quantity' => 10}).save()

album10 = Album.new({'name' => 'My Song', 'quantity' => 10}).save()
album11 = Album.new({'name' => 'Facing You', 'quantity' => 10}).save()

album12 = Album.new({'name' => 'Honkey', 'quantity' => 10}).save()

artist1 = Artist.new({'name' => 'The Rolling Stones'}).save()
artist2 = Artist.new({'name' => 'The Who'}).save()
artist3 = Artist.new({'name' => 'Keith Jarrett'}).save()
artist4 = Artist.new({'name' => 'Keith Emerson'}).save()

