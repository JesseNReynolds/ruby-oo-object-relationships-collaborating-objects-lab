class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        working = []
        Song.all.each do |fucking_songs_you_cocksucking_test_designing_bastards|
            if fucking_songs_you_cocksucking_test_designing_bastards.artist == self
                working << fucking_songs_you_cocksucking_test_designing_bastards
            end
        end
        return working
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def self.find_or_create_by_name(name)
        self.all.detect {|artist_instance| artist_instance.name == name} || Artist.new(name)
    end

    def print_songs
        @songs.each { |song_instance| puts song_instance.name }
    end



end
