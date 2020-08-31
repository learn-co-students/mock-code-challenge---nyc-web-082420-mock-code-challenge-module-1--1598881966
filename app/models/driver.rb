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
        names = Ride.all.select {|ride| ride.driver == self}.map {|ride| ride.passenger.name}.uniq
        # i want to find a better way to add commas with the addition of an and at last name
        "#{self.name}, your passengers have had been named, #{names.join(", and ")}"
    end

    def rides
        # - `Driver#rides`
        #   - Returns an array of all Rides a driver has made
        # its ugly, want to find a memorable way to create a list with an array. dont want to miss the delvierable. rides also are unnamed at this point
        p "#{self.name}, here is a list of rides you have given:"
        Ride.all.select {|ride| ride.driver == self}
    end

    def total_distance
        # helper for mileage_cap
        Ride.all.select {|ride| ride.driver == self}.map {|ride| ride.distance}.sum
    end

    def self.mileage_cap(distance)
        # - `Driver.mileage_cap(distance)`
        #   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        total = Ride.all.select {|ride| ride.driver}.map {|ride| ride.driver.total_distance}
        # I think in only need this second code. Unsure if I could use variables to lessen the time issue of .map.find_all.uniq
        each_driver = Driver.all.select {|driver| driver.total_distance}.find_all {|driver| driver.total_distance > distance}
        driver_name = each_driver.map{|driver|"#{driver.name}, with #{driver.total_distance.round(1).to_s} miles"}
        "These are our drivers who have driven over the cap: #{driver_name.join(", ")}"
    end
end