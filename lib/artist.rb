require_relative 'song.rb'
require_relative 'mp3_importer.rb'

class Artist
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @songs = []
    end
    def save
        @@all << self
    end
    def self.all
        @@all
    end
    def add_song(song_variable)
        @songs << song_variable
    end
    def songs
        @songs
    end
    def self.find_or_create_by_name(name_string)
        final_return = nil
        @@all.each do |artist_variable|
            if artist_variable.name == name_string
                final_return = artist_variable
            end
        end
        if final_return == nil
            final_return = Artist.new(name_string)
            @@all << final_return
        end
        final_return
    end
    def print_songs
        stringified_array = []
        @songs.each do |song_variable|
            stringified_array << song_variable.name
        end
        puts stringified_array
    end
end


new_artist = Artist.find_or_create_by_name("Michael Jackson")
dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")
new_artist.add_song(dirty_diana)
new_artist.add_song(billie_jean)
new_artist.print_songs
