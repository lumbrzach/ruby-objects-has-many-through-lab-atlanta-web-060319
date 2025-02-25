require "pry"

class Genre

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end
#     - The `Genre` class needs an instance method, `#songs`, that iterates through all
#   songs and finds the songs that belong to that genre.

    def artists
        self.songs.collect {|song| song.artist}
    end
    # - The `Genre` class needs an instance method, `#artists`, that iterates over the
    # genre's collection of songs and collects the artist that owns each song.






end