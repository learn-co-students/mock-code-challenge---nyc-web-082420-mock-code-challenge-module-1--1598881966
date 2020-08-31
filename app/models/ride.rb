class Ride
    attr_reader :driver, :passenger
    attr_accessor :distance

    @@all = []
    
    def initialize(driver, passenger, distance=0.0)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_dist = 0
        Ride.all.each {|rides| total_dist += rides.distance}
        total_dist /= Ride.all.count
    end
end
