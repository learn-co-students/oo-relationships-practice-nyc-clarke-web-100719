class Show
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        self.class.all << self
    end

    def episodes
        Episode.all.select { |episode| episode.show == self }
    end
    
    def appearances
        array_of_appearances = episodes.map { |episode| episode.appearances }
        array_of_appearances.flatten
    end

    def characters
        appearances.map { |appearance| appearance.character }
    end

    def actors
        characters.map { |character| character.actor }
    end

    def make_episode(title, array_of_characters = [])
        newep = Episode.new(self, title)
        array_of_characters.each { |character| Appearance.new(newep, character) }
        newep
    end

    def hire_actor(actor, charactername, episode) 
        newchar = Character.new(actor, charactername)
        Appearance.new(episode, newchar)
    end

    def use_char(episode, character)
        Appearance.new(episode, character)
    end

    def on_the_big_screen
        Movie.all.select { |movie| movie.title == @title }
    end

    def self.all
        @@all
    end
    
end