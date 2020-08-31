
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
        self.rides.map { |rides| rides.driver }.uniq
    end
    
    def total_distance
        self.rides.sum { |rides| rides.distance }
    end

    ##need to call total_distance on each passenger and return the corresponding array if distance greater than 100
    def self.premium_members
        self.all.filter { |passengers| passengers.total_distance > 100.0}
    end

end