require 'pry'

class Ride
    attr_accessor :driver_name, :passenger_name, :distance
    @@all = []

    def initialize (driver_name, passenger_name, distance)
        @driver_name = driver_name
        @passenger_name = passenger_name
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end
    manhattan = Ride.new("May", "Tom", 3.2)
    manhattan = Ride.new("Ben", "Dave", 2.3)

end
binding.pry