class Project

    attr_accessor :project_name, :goal_amount
    attr_reader :creator

    @@all = []

    def self.all
        @@all
    end

    def initialize(creator, project_name, goal_amount)
        @creator = creator
        @project_name = project_name
        @goal_amount = goal_amount

        self.class.all << self
    end

    def new_pledger(backer, amount_pledged)
        Pledge.new(backer, self, amount_pledged)
    end

    def pledges
        Pledge.all.select{|pledge| pledge.project == self}
    end

    def uniq_backers
        pledges.map{|pledge| pledge.backer}.uniq
    end

    def amount_raised
        pledges.map{|pledge| pledge.amount_pledged}.sum
    end

    def above_goal_amount?
        return true if amount_raised >= goal_amount
        false
    end

    def self.no_pledges
        all.select{|project| project.pledges.count == 0}
    end

    def self.above_goal
        all.select{|project| project.above_goal_amount? }
    end

    def self.most_backers
        all.max_by{|project| project.uniq_backers.count}
    end

end