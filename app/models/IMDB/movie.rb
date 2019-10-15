class Movie
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        self.class.all << self
    end


    def appearances
        Appearance.all.select {|appearance| appearance.movie == self}
    end

    def characters
        appearances.map { |appearance| appearance.character }
    end

    def actors
        characters.map { |character| character.actor }
    end

    def hire_actor(actor, charactername) 
        newchar = Character.new(actor, charactername)
        Appearance.new(self, newchar)
    end

    def use_char(character)
        Appearance.new(self, character)
    end

    def self.all
        @@all
    end
    
    def self.most_actors
        self.all.max_by { |movie| movie.actors.count }
    end

end