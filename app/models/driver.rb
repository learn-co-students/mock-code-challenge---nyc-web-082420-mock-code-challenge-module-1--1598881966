
class Driver

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.filter { |rides| rides.driver == self }
    end

    def passenger_names
        self.rides.map { |rides| rides.passenger }.uniq
    end

    ##helper method to find total mileage for each driver (same as passenger)
    def total_distance
        self.rides.sum { |rides| rides.distance }
    end

    def self.mileage_cap(distance)
        self.all.filter { |drivers| drivers.total_distance > distance }
    end
end