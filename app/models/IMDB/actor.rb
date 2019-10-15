class Actor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def characters
        Character.all.select { |character| character.actor == self }
    end

    def appearances
        array_of_appearances = characters.map do |character|
            character.appearances
        end
        array_of_appearances.flatten
    end

    def episodes
        appearances.reduce([]) do |episodes, appearance| 
            episodes << appearance.episode if appearance.episode
            episodes
        end
    end

    def shows
        episodes.reduce([]) do |shows, episode| 
            shows << episode.show unless shows.include?(episode.show)
            shows
        end
    end

    def movies
        appearances.reduce([]) do |movies, appearance| 
            movies << appearance.movie if appearance.movie
            movies
        end
    end

    def develop_character(name, movieorepisode)
        newchar = Character.new(self, name)
        newchar.movie_role(movieorepisode) if movieorepisode.class == Movie
        newchar.show_role(movieorepisode) if movieorepisode.class == Episode
    end

    def play_character(character, movieorepisode)
        character.movie_role(movieorepisode) if movieorepisode.class == Movie
        character.show_role(movieorepisode) if movieorepisode.class == Episode
    end

    def self.all
        @@all
    end

    def self.most_characters
        self.all.max_by { |actor| actor.characters.length }
    end
end