class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all<<self
    end

    def self.all
        @@all
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @distance
    end

    def self.average_distance
        average = 0
        self.all.each do |r|
            average += r.distance
        end
        average = average/self.all.length

    end




end
