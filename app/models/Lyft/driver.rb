class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def pick_up_ride(passenger, distance) #creates a ride object from driver side
        Ride.new(self, passenger, distance)
    end

    def rides
        Ride.all.select { |ride| ride.driver == self }        
    end

    def passengers #array of passenger obj instances of each ride (not unique)
        rides.map { |ride| ride.passenger }
    end

    def passenger_names
        array_of_names = passengers.map { |passenger| passenger.name }
        array_of_names.uniq
    end

    def distance_driven #calculates total distance driven for each driver based on his rides
        rides.reduce(0) { |sum, ride| sum + ride.distance }
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        self.all.select { |driver| driver.distance_driven > distance }
    end

end