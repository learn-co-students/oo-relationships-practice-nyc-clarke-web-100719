require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


user1 = User.new("Sal")
user2 = User.new("Rick")
user3 = User.new("Sam")
user4 = User.new("Carl")
user5 = User.new("Mark")

project1 = Project.new(user1, "Loop", 100000)
project2 = Project.new(user2, "Quix", 20000)
project3 = Project.new(user4, "MaxiN", 4000000)

pledge1 = Pledge.new(user4, project1, 200000)
pledge2 = Pledge.new(user3, project2, 1000)
pledge3 = Pledge.new(user3, project2, 2000)

binding.pry
0