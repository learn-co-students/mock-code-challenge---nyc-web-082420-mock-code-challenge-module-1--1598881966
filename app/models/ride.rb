class Ride
    attr_accessor :passenger, :driver, :distance

    @@all = []
# A Ride should be initialized with a driver (as a Driver object), a passenger 
# (as a Passenger object), and a distance (as a float i.e. `3.2`). The distance refers to miles.
    def initialize(passenger, driver, disctance)
# - `Ride#passenger`
# - `Ride#driver`
# - `Ride#distance`
        @passenger = passenger
        @driver = driver
        @distance = disctance
        @@all << self
    end

    def self.all
        # added all method to access passengers and drivers from SSOT
        @@all
    end

    def self.average_distance
        # - `Ride.average_distance`
        #   - Returns the average distance across ALL rides
        total_miles = Ride.all.map {|ride| ride.distance}.sum
        total_trips = Ride.all.count
        average = total_miles / total_trips
        "Our rides are averaging #{average.round(1)} miles, over #{total_trips} trips!"
    end
end