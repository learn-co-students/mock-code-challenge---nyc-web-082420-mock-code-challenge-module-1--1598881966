

class Driver

    attr_accessor :name
    attr_reader :ride

    @@all = []



    def initialize(name)
        @name = name
        @@passengers = []
        @@ll << self
    end

    def passenger_names
        @@passengers.name.uniq
    end

    def rides
        Ride.all.select { |rides| rides.driver == self}
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        Ride.all.select { |driver| driver.distance > distance }
    end















end