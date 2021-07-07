class User
    attr_reader :name
    
    @@all = []
  
    def initialize(name)
        @name = name
  
        self.class.all << self
    end
  
    def create_project(name, goal_amount)
        Project.new(name, goal_amount, self)
    end
  
    def back_project(project, amount)
        Pledge.new(self, project, amount)
    end
  
    # method to return all projects I've created
    def my_projects
        # Look at all the project
        # see which project's creator is equal to self
        Project.all.select do |project|
          project.creator == self
        end
    end
  
    # method to return all pledges I've made
    def pledges
        # Look through all pledges
        # only keep the ones where pledge.user == self
        Pledge.all.select do |pledge|
          pledge.user == self
        end
    end

    # method to return all projects I've donated to
    def backed_projects
        pledges.map { |pledge| pledge.project }
    end

    # helper method for self.highest_pledge to abstract away the process to get highest pledge amount
    def highest_pledge_amount
        pledges.reduce(0) do |highest_pledge_amount, pledge|  
            highest_pledge_amount = pledge.amount > highest_pledge_amount ? pledge.amount : highest_pledge_amount
        end 
    end

    def self.all
        @@all
    end
  
    # method to return highest pledge by iterating through all users and checking the highest pledge of each user
    def self.highest_pledge
        self.all.max_by { |user| user.highest_pledge_amount }
    end
  
    # method to return an array of users who have more than 1 pledge, which qualifies them as a multi-pledger
    def self.multi_pledger
        self.all.select { |user| user.pledges.count > 1 }
    end

    def self.project_creator
        self.all.select { |user| user.my_projects.any? }
    end
end