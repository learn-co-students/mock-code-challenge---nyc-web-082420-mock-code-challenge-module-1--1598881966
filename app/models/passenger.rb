
class Passenger

    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name.to_s
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        # returns an array of Driver istances that this person rode with
        Driver.all.select {|driver| driver.passenger == self} # getting an undefined method 'passenger' in 'block in drivers'
    end

    def total_distance
        # Returns the floating number that represents the total distance the passenger has travelled using the service
    end

    def premium_members
        # Returns an array of all Passengers who have travelled over 100 miles in total with the service
    end

end