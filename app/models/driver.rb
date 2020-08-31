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

    def passenger_names 
        self.all.select { |passenger| passenger.name == self}
    end

    def rides
        Ride.all.select { |ride| ride.driver == self}
    end

    def self.mileage_cap(distance)
end
