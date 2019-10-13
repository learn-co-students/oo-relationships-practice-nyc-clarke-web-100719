class User
#User should be able to:
# create projects - project will belong to user
# back projects - this will be connected by a pledge 

    attr_reader :name
    @@all =[]

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def create_project(project_name, goal_amount)
        Project.new(self, project_name, goal_amount)
    end

    def my_projects
        Project.all.select{|project| project.creator == self}
    end

    def number_project
        my_projects.count
    end

    def new_pledge(project, amount) 
        Pledge.new(self, project, amount)
    end

    def pledges #instance user should be able to recall its pledges
        Pledge.all.select{|pledge| pledge.backer == self}
    end

    def number_pledges
       pledges.count
    end

    def highest_pledge
        pledges.max_by{|pledge| pledge.amount_pledged}
    end

    def self.highest_pledge
        #all.max_by{|user| user.highest_pledge}
        Pledge.all.max_by{|pledge| pledge.amount_pledged}.backer
    end

    def self.multi_pledger
        all.select{|user| user.number_pledges > 1}
    end

    def self.project_creator
        all.select{|user| user.number_project > 0}
    end
end
