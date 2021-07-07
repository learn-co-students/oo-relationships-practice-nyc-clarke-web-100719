#belongs_to Location & Client
#join-model between Location & Client (and by extension Trainer)
class Appointment
    attr_reader :client, :location, :trainer

    @@all = []

    def initialize(client, trainer, location, time)
        @client = client
        @location = location
        @time = time

        self.class.all << self
    end

    def self.all
        @@all
    end
end