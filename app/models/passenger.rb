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

    def self.premium_members
        Passenger.all.select {|pass| pass.total_distance > 100}
    end

    def rides
        Ride.all.select {|ride_instance| ride_instance.passenger == self}
    end

    def drivers
        self.rides.map {|ride| ride.driver}
    end

    def total_distance
        dist = 0
        self.rides.each {|driven| dist += driven.distance}
        dist
    end
 
end