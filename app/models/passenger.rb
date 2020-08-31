class Passenger
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def rides
        Ride.all.find{|ride| ride.passenger == self}
    end

    def drivers
        rides.map{|driver| driver.driver}
    end

    def total_distance
        
    end


end
