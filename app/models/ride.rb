class Ride
    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize (driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.average_distance
        distance_array = self.all.map do |ride|
            ride.distance
        end
    end

    def self.over_mileage(mileage)#<---Let's call this 'over_mileage' according to the README.
        self.all.select do |ride|
            ride.distance > mileage
        end
    end

    def self.all
        @@all
    end
end
