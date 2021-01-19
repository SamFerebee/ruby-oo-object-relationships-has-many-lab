require 'pry'

class Song

    @@all = []

    attr_reader :name
    attr_accessor :artist

    def initialize(name, artist = nil)
        @name = name
        @artist = artist
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

    def songs(artist_to_check)
        self.class.all.select{|song| song.artist == artist_to_check}
    end

    def artist_name
        if artist == nil
            return nil
        else
            artist.name
        end
    end

end