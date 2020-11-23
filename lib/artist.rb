require "pry"
class Artist

    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end


    def songs
        Song.all.select {|s| s.artist == self}
    end

    def add_song(song_obj)
        song_obj.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def self.song_count
        Song.all.length
    end


end