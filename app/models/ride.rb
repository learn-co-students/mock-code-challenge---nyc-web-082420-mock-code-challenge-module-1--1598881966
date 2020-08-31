class Ride
    attr_reader :driver, :passenger
    attr_accessor :distance

    @@all = []
    
    def initialize(driver, passenger, distance=0.0)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_dist = 0
        Ride.all.each {|rides| total_dist += rides.distance}
        total_dist /= Ride.all.count
    end
end

# #### Ride
# A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. `3.2`). The distance refers to miles.
# - `Ride#passenger` DONE
#   - Returns the Passenger object for that ride
# - `Ride#driver` DONE
#   - Returns the Driver object for that ride
# - `Ride#distance` DONE
#   - Returns the distance of the ride
# - `Ride.average_distance` DONE
#   - Returns the average distance across ALL rides