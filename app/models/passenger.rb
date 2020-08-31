class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        # should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed.
        # - `Passenger#name`
        @name = name
        @@all << self
    end

    def self.all
        #   - Returns an array of all Passengers
        @@all
    end

    def rides
        # array of all rides ive(instance) been on
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        # array of all driers ive(instance) had
        self.rides.map {|ride| ride.driver}.uniq
        # with names returned as strings in array
        # jake.rides.map {|ride| ride.driver.name}.uniq
    end

    def total_distance
        # total distance of my rides
        Ride.all.select {|ride| ride.passenger == self}.map {|ride| ride.distance}.sum
    end

    def self.premium_members
        # - `Passenger.premium_members`
        #   - Returns an array of all Passengers who have travelled over 100 miles in total with the service
        total = Ride.all.map {|ride| ride.passenger}.map {|ride| ride.total_distance}.uniq
        # I think in only need this second code. Unsure if I could use variables to lessen the time issue of .map.find_all.uniq
        each_passenger = Ride.all.map {|ride| ride.passenger}.find_all {|passenger| passenger.total_distance > 100}.uniq
    end
    
end