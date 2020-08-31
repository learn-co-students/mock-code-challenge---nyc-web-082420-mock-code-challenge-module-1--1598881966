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
        rides.map { |ride| ride.passenger.name}.uniq
    end

    def rides
        Ride.all.select { |ride| ride.driver == self}
    end

    def self.mileage_cap(distance)
        self.all.select { |driver| driver.length > distance}

    end
end
