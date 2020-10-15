class Song
    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        # "Michael Jackson - Black or White - pop.mp3"
        file_array = filename.split(" - ")
        song = Song.new(file_array[1])
        song.artist_name=(file_array[0])
        return song
    end

    def artist_name=(artist)
        artist = Artist.find_or_create_by_name(artist)
        self.artist = artist
    end




end
