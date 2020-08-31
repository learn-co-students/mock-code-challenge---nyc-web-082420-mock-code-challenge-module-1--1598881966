class Ride

    attr_accessor :driver, :passenger, :distance
    @@all =[]

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



# #### Ride
# - 
# - `Ride.average_distance`
#   - Returns the average distance across ALL rides
