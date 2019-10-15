class Passenger
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end
    
    def hail_ride(driver, distance) #creates ride object from passenger side
        Ride.new(driver, self, distance)
    end

    def rides
        Ride.all.select { |ride| ride.passenger == self }
    end

    def drivers
        rides.map { |ride| ride.driver }        
    end

    def total_distance
        rides.reduce(0.0) { |sum, ride| sum + ride.distance }
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select { |passenger| passenger.total_distance >= 100 }
    end
end
