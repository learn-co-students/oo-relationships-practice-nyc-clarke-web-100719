require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# listing1 = Listing.new("New York")
# listing2 = Listing.new("Hong Kong")
# listing3 = Listing.new("London")
# listing4 = Listing.new("Hong Kong")

# guest1 = Guest.new("Gene")
# guest2 = Guest.new("Jimmy")

# trip1 = Trip.new(listing1, guest1)
# trip2 = Trip.new(listing2, guest1)
# trip3 = Trip.new(listing3, guest1)
# trip4 = Trip.new(listing2, guest2)


# sb1 = Ingredients.new("strawberry", 50)
# sb2 = Ingredients.new("strawberry", 50)
# flour1 = Ingredients.new("flour", 10)
# egg1 = Ingredients.new("egg", 100)
# sbpowder1 = Ingredients.new("strawberry powder", 10)

# sb_cake = Desserts.new("Strawberry Cake")
# sb_cake.associate_ingredients([sb1, sb2, flour1, egg1])

# bakery1 = Bakery.new("Great Bakery")
# bakery1.add_dessert(sb_cake)

binding.pry
0