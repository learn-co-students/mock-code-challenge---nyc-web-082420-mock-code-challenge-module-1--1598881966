
class Passenger

    attr_reader :name, :ride

    @@all = []


    def initialize(name)
        @name = name
        @@rides = []
        @@all << self

    end

    def rides
        Ride.all.select { |ride| ride.passenger == self}
    end

    def drivers
        Drive.all.select { |driver| driver.passenger == self}
    end

    def self.all
        @@all
    end

    def self.premium_members
        Passenger.all.select { |members| members.distance > 100.00}
    end












end
