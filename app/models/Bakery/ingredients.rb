class Ingredients
    attr_accessor :name, :dessert, :calories, :bakery

    @@all = []

    def initialize(name, dessert=nil, calories)
        @name = name
        @calories = calories
        @dessert = dessert
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient_name)
        self.all.select do |ingredient|
            ingredient.name.include? ingredient_name
        end
    end


end