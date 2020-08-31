
class Ride

    ## how do you ensure that distance is always initialized as a float?? .to_f in the initalize?

    attr_accessor :passenger, :driver, :distance
    @@all = []

    def initialize(passenger, driver, distance = 0.0)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        self.all.sum { |rides| rides.distance } / self.all.count
    end

end