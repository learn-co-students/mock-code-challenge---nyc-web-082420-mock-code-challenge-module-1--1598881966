
class Driver

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @passenger = passenger
        @ride = ride
        @distance = 100 # does this make a mileage cap? or can distance only be 100? hmmmm.
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        # Returns an array of all Passengers' names a driver has driven. 
        # The names should be **unique** (no repeats). (use .unique? maybe?)
    end

    def rides
        Ride.all.select {|ride| ride.driver == self} #undefined local variable or method 'driver' for main:Object
    end

    def mileage_cap(distance)
        # Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        if self.distance > # mileage cap - not sure how to represent this
            #returns array of all drivers who have driven over the mileage
        end

    end



end