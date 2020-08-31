
# #### Driver
# XXX A Driver should be initialized with a name as a string.
# XXX- `Driver#name` - Returns the driver's name
# XXX `Driver#passenger_names`- Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
# XXX `Driver#rides` - Returns an array of all Rides a driver has made
# XXX - `Driver.all` - Returns an array of all Drivers
# XXX `Driver.mileage_cap(distance)` - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage

class Driver

    #No guideline on if driver name can change, but I'll assume it can't & use attr_reader
    attr_reader :name


    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select { |ride| ride.driver == self }
    end

    def passenger_names
        self.rides.map { |ride| ride.passenger }.uniq
    end

    #Helper function, not in deliverables
    #If driver has no rides, set miles = 0
    def total_mileage
        mileage = self.rides.map { |ride| ride.distance }.reduce { |sum, n| sum + n }
        if mileage
            mileage.round(1)
        else
            mileage = 0
        end
    end

    def self.mileage_cap(mileage)
        self.all.select { |driver| driver.total_mileage > mileage }
    end

end