require_relative 'mp3_importer.rb'
require_relative 'song.rb'
require_relative 'artist.rb'


new_artist = Artist.find_or_create_by_name("Michael Jackson")
dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")
new_artist.add_song(dirty_diana)
new_artist.add_song(billie_jean)
new_artist.print_songs
