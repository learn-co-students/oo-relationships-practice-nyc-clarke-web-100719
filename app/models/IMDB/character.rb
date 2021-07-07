class Character
    attr_accessor :actor, :name

    @@all = []

    def initialize(actor, name)
        @actor = actor
        @name = name
        self.class.all << self
    end

    def actor_name
        actor.name if actor
    end

    def appearances #appearances in episodes and movies
        Appearance.all.select { |appearance| appearance.character == self }
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

    def movie_role(movie)
        Appearance.new(movie, self)
    end

    def show_role(episode)
        Appearance.new(episode, self)
    end

    def self.all
        @@all
    end

    def self.most_appearances
        self.all.max_by { |character| character.movies.length + character.shows.length }
    end
end