class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
# should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed.
# - `Passenger#name`
        @name = name
        @@all << self
    end

    def self.all
#   - Returns an array of all Passengers
        @@all
    end

    def rides
# array of all rides ive(instance) been on

    end

    def drivers
# array of all driers ive(instance) had

    end

    def total_distance
# total distance of my rides

    end

    def self.premium_members
# - `Passenger.premium_members`
#   - Returns an array of all Passengers who have travelled over 100 miles in total with the service

    end
    
end