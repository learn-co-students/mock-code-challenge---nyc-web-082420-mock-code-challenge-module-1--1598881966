
# #### Ride
# XXX A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. `3.2`). The distance refers to miles.
# XXX - `Ride#passenger` - Returns the Passenger object for that ride
# XXX- `Ride#driver` - Returns the Driver object for that ride
# XXX `Ride#distance` - Returns the distance of the ride
# - `Ride.average_distance`
#   - Returns the average distance across ALL rides


class Ride

    #No guideline on if driver, passenger, distance can change - I assume they can and used attr_accessor
    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all 
    end

end