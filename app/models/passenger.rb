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

# #### Passenger
# A Passenger should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed.
# - `Passenger#name` DONE
#   - Returns the name of the passenger
# - `Passenger#rides` DONE
#   - Returns an array of Ride instances that this person has been on
# - `Passenger#drivers` DONE
#   - Returns an array of Driver instances that this person has rode with
# - `Passenger#total_distance` DONE
#   - Returns the floating number that represents the total distance the passenger has travelled using the service
# - `Passenger.all` DONE
#   - Returns an array of all Passengers
# - `Passenger.premium_members` DONE
#   - Returns an array of all Passengers who have travelled over 100 miles in total with the service
