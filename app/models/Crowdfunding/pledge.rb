class Pledge
    attr_reader :user, :project, :amount
  
    @@all = []
  
    def initialize(user, project, amount)
        @user = user
        @project = project
        @amount = amount
        
        self.class.all << self
    end
  
    def self.all
        @@all
    end
  end