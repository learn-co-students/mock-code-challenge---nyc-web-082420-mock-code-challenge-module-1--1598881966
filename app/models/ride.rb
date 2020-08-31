class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
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
        distances = self.all.map do |ride|
            ride.distance
        end
        count1 = distances.count

        distances/count1

    end
end
