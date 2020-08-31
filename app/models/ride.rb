
class Ride

    # need attrs
    attr_accessor :driver, :passenger, :distance 
    # class variable all
    @@all = []

    # initialize with driver, passenger, distance (as float) in miles
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    # passenger method returns passenger for that ride
    def passenger
        @passenger
    end

    # driver method returns driver for that ride
    def driver
        @driver
    end

    # distance method returns distance for ride
    def distance
        @distance.to_f  #need to check on float method
    end

    #class method average distance for all rides
    def self.average_distance
        self.all.distance.inject {|sum, el| sum + el}.to_f / self.all.distance.size
    end
end