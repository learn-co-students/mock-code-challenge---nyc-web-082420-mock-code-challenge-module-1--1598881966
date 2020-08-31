class Passenger
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def rides
        Ride.all.find{|ride| ride.passenger == self}
    end

    def drivers
        rides.map{|driver| driver.driver}
    end

    def total_distance
        self.rides.map {|ride| ride.distance}.inject {|total, value| total += value}
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end


end
