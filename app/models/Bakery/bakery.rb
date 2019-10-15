class Bakery
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def add_dessert(dessert)
        dessert.bakery = self
        dessert.ingredients.each { |ingredient| ingredient.bakery = self }
    end

    def desserts
        Desserts.all.select { |dessert| dessert.bakery == self }
    end

    def ingredients
        desserts.reduce([]) do |array, dessert|
            dessert.ingredients.each do |ingredient|
                array << ingredient
            end
            array
        end
    end
    
    def total_calories
        desserts.reduce(0) { |sum, dessert| sum + dessert.calories}
    end

    def average_calories
        total_calories / desserts.length
    end

    def shopping_list
        ingredients.each { |ingredient| puts ingredient.name }
    end

    def self.all
        @@all
    end
end