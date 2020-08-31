class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all<<self
    end

    def self.all
        @@all
    end

    def driver_name
        @name
    end

    def passenger_names
        self.passenger_names.map{|rides| rides.passenger}.uniq
    end

    def driver_rides
        Ride.all.select{|rides| rides.driver == self}
    end

    def total_distance
        self.driver_rides.map{|rides|rides.distance}.sum
    end

    def self.mileage_cap(cap)
        self.all.select{|drivers| drivers.total_distance > cap}
    end
end
