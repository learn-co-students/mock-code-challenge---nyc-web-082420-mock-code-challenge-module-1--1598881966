class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passenger_names
        self.rides.map do |ride|
            ride.passenger_name #<-----You need to have a ***unique*** name tiffani
        end
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        Ride.mileage(distance).map do |ride|
            ride.driver
        end
    end
end
