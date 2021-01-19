class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song_to_add)
        song_to_add.artist = self
    end

    def add_song_by_name(name)
        Song.new(name, self)
    end

    def self.song_count
        Song.all.size
    end

end