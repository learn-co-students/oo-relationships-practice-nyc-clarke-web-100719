require_relative '../config/environment.rb'
require 'date'

def reload
  load 'config/environment.rb'
end

# AIRBNB SEED DATA
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

#BAKERY SEED DATA
# sb1 = Ingredients.new("strawberry", 50)
# sb2 = Ingredients.new("strawberry", 50)
# flour1 = Ingredients.new("flour", 10)
# egg1 = Ingredients.new("egg", 100)
# sbpowder1 = Ingredients.new("strawberry powder", 10)

# sb_cake = Desserts.new("Strawberry Cake")
# sb_cake.associate_ingredients([sb1, sb2, flour1, egg1])

# bakery1 = Bakery.new("Great Bakery")
# bakery1.add_dessert(sb_cake)

# IMDB SEED DATA
# movie1 = Movie.new("Frozen")
# movie2 = Movie.new("Titanic")
# movie3 = Movie.new("Avengers: Endgame")
# actor1 = Actor.new("Kristen Bell")
# actor2 = Actor.new("Idina Menzel")
# actor3 = Actor.new("Leonardo diCaprio")
# actor4 = Actor.new("Robert Downey Jr.")
# actor5 = Actor.new("Elizabeth Olson")
# actor6 = Actor.new("Justin Roiland")
# show1 = Show.new("Frozen")
# frep1 = show1.make_episode("Ep 1 FR")
# show2 = Show.new("WandaVision")
# wvep1 = show2.make_episode("Ep 1 WV")
# wvep2 = show2.make_episode("Ep 2 WV")
# show3 = Show.new("Ricky and Morty")
# rmep1 = show3.make_episode("Ep 1 RM")
# rmep2 = show3.make_episode("Ep 2 RM")
# app1 = movie1.hire_actor(actor1, "Anna")
# char1 = app1.character
# app2 = show1.use_char(frep1, char1)
# app3 = show2.hire_actor(actor5, "Scarlet Witch", wvep1)
# char2 = app3.character
# app4 = movie3.use_char(char2)
# app5 = actor6.develop_character("Rick", rmep2)
# char3 = app5.character
# app6 = actor6.play_character(char3, rmep1)
# app7 = actor6.develop_character("Morty", rmep1)
# app8 = movie2.use_char(char1)
# app9 = movie2.hire_actor(actor4, "Rose")

# puts app1.character.name
# puts app2.character.name
# puts app3.character.name
# puts app4.character.name
# puts app5.character.name
# puts app6.character.name
# puts app7.character.name
# puts app8.character.name
# puts app9.character.name

# CROWDFUNDING SEED DATA
# user1 = User.new("Brad")
# user2 = User.new("Babs")
# user3 = User.new("Brito")

# project1 = Project.new('fund me for my yoyo idea', 6000, user1)
# project2 = Project.new('fund me for my hamburger idea', 100, user2)
# project3 = Project.new('fund me for my bubble tea idea', 400, user1)

# pledge1 = Pledge.new(user3, project1, 50)
# pledge2 = Pledge.new(user3, project1, 150)
# pledge3 = Pledge.new(user2, project2, 250)
# user2.back_project(project1, 1000)
# project4 = user2.create_project('potato festival', 3000)

# GYM SEED DATA

# bklyn = Location.new("Brooklyn")
# bx = Location.new("Bronx")
# si = Location.new("Staten Island")

# jack = Trainer.new("Jack")
# jill = Trainer.new("Jill")
# danny = Trainer.new("Daniel")

# jim = Client.new("Jimmy", danny)
# john = Client.new("Johnny", danny)
# law = Client.new("Lawrence", jill)


# jim.assign_trainer(jack)
# john.assign_trainer(jill)
# appt1 = john.book_appointment(bx, "1PM", danny)
# appt2 = jim.book_appointment(bklyn, "2PM")
# appt3 = law.book_appointment(bklyn, "3PM", jack)



binding.pry
0