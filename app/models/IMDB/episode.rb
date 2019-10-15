class Episode
    attr_accessor :show, :title

    @@all = []

    def initialize(show, title)
        @show = show
        @title = title
        self.class.all << self
    end

    def show_name
        show.name if show
    end

    def appearances
        Appearance.all.select { |appearance| appearance.episode == self }
    end

    def characters
        appearances.map { |appearance| appearance.character }
    end

    def actors
        characters.map { |character| character.actor }
    end

    def self.all
        @@all
    end


end