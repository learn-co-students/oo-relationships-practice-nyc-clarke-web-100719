class Desserts
    attr_accessor :bakery, :name

    @@all = []

    def initialize(name, bakery = nil)
        @name = name
        @bakery = bakery
        self.class.all << self
    end

    def ingredients
        Ingredients.all.select { |ingredient| ingredient.dessert == self}
    end

    def associate_ingredient(ingredient)
        ingredient.dessert = self
    end

    def associate_ingredients(array_of_ingredients)
        array_of_ingredients.each do |ingredient|
            associate_ingredient(ingredient)
        end
    end

    def calories
        ingredients.reduce(0) { |sum, ingredient| sum + ingredient.calories }
    end

    def self.all
        @@all
    end

end