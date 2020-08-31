class Driver
    attr_accessor :name

    @@all = []

    def initialize(name)
# - `Driver#name`
        @name = name
        @@all << self
    end

    def self.all
# - `Driver.all`
        @@all
    end

    def passenger_names
# - `Driver#passenger_names`
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
        Ride.all.select {|ride| ride.driver == self}.map {|ride| ride.passenger.name}.uniq
    end

    def rides
# - `Driver#rides`
#   - Returns an array of all Rides a driver has made
        Ride.all.select {|ride| ride.driver == self}
    end

    def distance_total
# helper for mileage_cap
        Ride.all.select {|ride| ride.driver == self}.map {|ride| ride.distance}.sum
    end

    def self.mileage_cap(distance)
# - `Driver.mileage_cap(distance)`
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        total = Ride.all.select {|ride| ride.driver}.map {|ride| ride.driver.distance_total}
        each_driver = Driver.all.select {|driver| driver.distance_total}.find_all {|driver| driver.distance_total > distance}
    end
end