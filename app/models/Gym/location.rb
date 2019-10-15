class Location
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def appointments
        Appointment.all.select { |appt| appt.location == self }
    end

    def clients
        appointments.map { |appt| appt.client }.uniq
    end

    def self.all
        @@all
    end

    def self.least_clients
        self.all.min_by { |location| location.clients.count }
    end
end