class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides 
        Ride.all.select do |ride|
            ride.passenger == self #<---- not sure about this one!
        end
    end
    
    def drivers
        self.rides.map do |ride|
            ride.driver
        end
    end

        def total_distance
            self.all.select {|passenger| passenger.total_distance > 100}
        end

        def self.premium_members
            self.all.select do |passenger|
                passenger.total_distance > 100
            end
        end

    def self.all
        @@all
    end
end