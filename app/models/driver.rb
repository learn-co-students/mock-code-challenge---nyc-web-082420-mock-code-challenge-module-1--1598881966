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

# #### Driver
# A Driver should be initialized with a name as a string.
# - `Driver#name` DONE
#   - Returns the driver's name
# - `Driver#passenger_names` DONE
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
# - `Driver#rides` DONE
#   - Returns an array of all Rides a driver has made
# - `Driver.all` DONE
#   - Returns an array of all Drivers
# - `Driver.mileage_cap(distance)` DONE
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage

