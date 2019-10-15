class Appearance
    attr_accessor :movie, :episode, :character

    @@all = []

    def initialize(movieorepisode, character)
        @movie = movieorepisode if movieorepisode.class == Movie
        @episode = movieorepisode if movieorepisode.class == Episode
        @character = character
        self.class.all << self
    end

    def self.all
        @@all
    end
end