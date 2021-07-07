class Ride
    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        self.class.all << self
    end

    def self.all #used as single source of truth
        @@all
    end

    def self.total_distance #returns total distance of all rides
        self.all.reduce(0.0) { |sum, ride| sum + ride.distance }
    end

    def self.average_distance
        self.total_distance / self.all.length
    end

end
