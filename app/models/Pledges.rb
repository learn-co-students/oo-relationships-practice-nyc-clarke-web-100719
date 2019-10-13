class Pledge

    attr_reader :backer, :project, :amount_pledged
    @@all = []

    def self.all
        @@all
    end

    def initialize(backer, project, amount_pledged)
        @backer = backer
        @project = project
        @amount_pledged = amount_pledged

        self.class.all << self
    end


end