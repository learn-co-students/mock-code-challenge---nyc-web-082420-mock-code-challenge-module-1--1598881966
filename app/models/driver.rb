class Driver
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
        Ride.all.select {|ride_instance| ride_instance.driver == self}
    end

    def passenger_names
        self.rides.map {|ride| ride.passenger.name}.uniq
    end
end
