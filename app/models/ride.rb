class Ride 
    attr_accessor :driver, :distance, :passenger
    @@all = [] 

    def initialize(driver, distance, passenger)
        @driver = driver
        @distance = distance 
        @passenger = passenger 
        @@all << self
    end 

    def self.average_distance
        distance_sum = 0
        @@all.each { |length| sum += length.distance }
        sum / @@all.count
    end
end 
# #### Ride
# A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. `3.2`). The distance refers to miles.
# - `Ride#passenger`
#   - Returns the Passenger object for that ride
# - `Ride#driver`
#   - Returns the Driver object for that ride
# - `Ride#distance`
#   - Returns the distance of the ride
# - `Ride.average_distance`
#   - Returns the average distance across ALL rides