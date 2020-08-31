
# #### Ride
# XXX A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. `3.2`). The distance refers to miles.
# XXX - `Ride#passenger` - Returns the Passenger object for that ride
# XXX- `Ride#driver` - Returns the Driver object for that ride
# XXX `Ride#distance` - Returns the distance of the ride
# XXX `Ride.average_distance` - Returns the average distance across ALL rides


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

    #helper method, not in deliverables
    #if no rides have been taken, set to 0 miles
    def self.total_distance
        distance = self.all.map { |ride| ride.distance }.reduce(0) { |sum, n| sum + n }
        if distance
            distance.round(1)
        else
            distance = 0
        end
    end

    #helper method
    def self.ride_count
        self.all.count
    end


    #rounded to 10th mile for consistency
    def self.average_distance
        if self.ride_count == 0
            0
        else
            (self.total_distance / self.ride_count).round(1)
        end
    end

end