class Client
    attr_accessor :trainer
    attr_reader :name

    @@all = []

    def initialize(name, trainer)
        @name = name
        @trainer = trainer

        self.class.all << self
    end

    def assign_trainer(trainer)
        self.trainer = trainer
    end

    def book_appointment(location, time, trainer = self.trainer)
        self.trainer = trainer if trainer != self.trainer
        Appointment.new(self, trainer, location, time)
    end

    def self.all
        @@all
    end
end