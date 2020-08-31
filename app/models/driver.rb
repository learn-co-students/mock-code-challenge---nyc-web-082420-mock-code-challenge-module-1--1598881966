
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

    ##needs to be unique
    def passenger_names
        self.rides.map { |rides| rides.passenger }.uniq
    end

end