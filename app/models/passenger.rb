class Passenger
    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride_instance| ride_instance.passenger == self}
    end

    def drivers
        self.rides.map {|ride| ride.driver}
    end

    def total_distance

    end

    def 
end
