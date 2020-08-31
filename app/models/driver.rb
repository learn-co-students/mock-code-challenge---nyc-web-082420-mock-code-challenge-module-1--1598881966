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

    def self.mileage_cap(cap)
        Driver.all.select {|drive| drive.total_distance > cap}
    end

    def rides
        Ride.all.select {|ride_instance| ride_instance.driver == self}
    end

    def passenger_names
        self.rides.map {|ride| ride.passenger.name}.uniq
    end

    def total_distance
        dist = 0
        self.rides.each {|driven| dist += driven.distance}
        dist
    end
end

