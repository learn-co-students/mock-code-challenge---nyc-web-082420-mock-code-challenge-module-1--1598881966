
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

    def rides
        Ride.all.filter { |rides| rides.passenger == self }
    end

    def drivers
        self.rides.map { |rides| rides.driver }
    end
    

end